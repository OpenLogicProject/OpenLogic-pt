# Relatório 02 — Integridade de tokens e recuperação de corrupção externa

## Interpretação

Durante a fase de tradução em massa (distribuída entre subagentes), um dos
subagentes relatou que um **processo externo** estava sobrescrevendo arquivos já
traduzidos, revertendo-os para inglês ou aplicando tradução automática "crua".
Ao retomar o controle, confirmei que esse processo não apenas reverte texto, mas
**corrompe a estrutura do Open Logic** de duas formas graves:

1. **Reversão de prosa**: arquivos voltam ao inglês (ex.: `summary-1.tex`).
2. **Quebra de tokens `!!{...}`**: a ferramenta traduz o conteúdo *dentro* dos
   tokens e/ou funde o artigo ao token. Exemplos reais encontrados:
   - `!!a{variable}` → `!!uma atribuição de{variável}`
   - `!!{structure}` → `!!a{estrutura}`
   - `!!a{formula}` → `!!uma{fórmula}`
   - `!!^{subformula}` → `!!^{subfórmula}`
   - `!!a{derivation}` → `!!uma{derivação}`

Os tokens do Open Logic são o mecanismo central de terminologia: o conteúdo entre
chaves é **sempre uma palavra-chave em inglês** que o sistema mapeia para o termo
PT-BR definido em `slc-config.sty`/`\settexttoken`. Traduzir dentro do token quebra
esse mapeamento e/ou a compilação. Portanto, **integridade de token é condição de
corretude** — não basta a prosa estar em português.

## Objetivos

1. Distinguir corrupção **real** de **falsos positivos** (tokens em inglês são
   corretos; `!!^{...}` e `!!^a{...}` são sintaxe válida).
2. Produzir um inventário **preciso** dos arquivos do curso com tokens corrompidos.
3. Recuperar os arquivos afetados retraduzindo **a partir do original em inglês**.
4. Verificar que o processo externo não está mais ativo (para que os reparos não
   sejam revertidos).

## Plano

- **Detector por diferença de tokens (padrão-ouro):** para cada arquivo do curso,
  extrair o conjunto de conteúdos de token `!!\^?[aA]?\{(...)\}` do **original**
  inglês e do **traduzido**. Qualquer token no traduzido cujo conteúdo não exista
  no original é, por definição, corrupção. Detectar também `!!` malformado
  (não seguido de `\^?[aA]?\{`).
- Restringir a varredura **somente aos arquivos que entram no PDF do curso**
  (lista canônica `verificacao/arquivos-tex-no-pdf.txt`), pois a árvore
  `OpenLogic-traduzido` contém todos os cursos do Open Logic, e traduzir/checar
  fora do curso seria fora de escopo.

## Execução

- Scripts criados:
  - `scripts/scan_course.py` — escaneia prosa ainda em inglês **apenas** nos 176
    arquivos do PDF do curso.
  - `scripts/scan_tokens.py` — detector definitivo por diferença de tokens
    (traduzido × original), saída em `verificacao/tokens-corrompidos.txt`.
- Falsos positivos eliminados: tokens ingleses corretos (`!!{formula}`,
  `!!{sentence}`, …) e a sintaxe `!!^{...}`/`!!^a{...}`.
- Teste de atividade do processo externo: arquivos corrigidos manualmente
  (`introduction/sentences.tex`, `summary-1.tex`) permaneceram íntegros após
  ~10 min → o processo externo **não estava reescrevendo** naquele momento.
- Verificação de encoding: 0 arquivos não-UTF-8 (o `�` observado no console era
  apenas limitação de exibição do PowerShell, não corrupção de arquivo).

## Resultados

- **28 arquivos do curso** com tokens corrompidos (lista detalhada em
  `verificacao/tokens-corrompidos.txt`). (Uma primeira passada apontou 30, mas
  2 eram **falsos positivos por quebra de linha**: tokens multilinha no original,
  como `!!{main`⏎`operator}`, foram reflowados para uma linha no traduzido. O
  detector foi ajustado para normalizar espaços/quebras dentro do token antes de
  comparar.) Concentração:
  - `first-order-logic/introduction/*` (7) — arquivos de abertura de capítulo,
    não atribuídos a nenhum subagente.
  - `first-order-logic/proof-systems/*` (5) e `models-theories/*` (5) — cobertos
    pelo subagente de sintaxe/semântica/sistemas-de-prova.
  - `first-order-logic/beyond/*` (5) — parcialmente coberto pelo subagente de
    completude/beyond.
  - `first-order-logic/natural-deduction/*` (5) — parcialmente coberto.
  - avulsos: `completeness/downward-ls`, `sequent-calculus/rules-and-proofs`,
    `syntax-and-semantics/substitution`.
- **24 arquivos do curso** ainda com prosa em inglês (lista em `scan_course.py`),
  sobrepondo-se parcialmente aos corrompidos.
- Correções manuais já aplicadas: `introduction/sentences.tex` (tokens reconstruídos
  a partir do original) e `summary-1.tex` (retraduzido).

## Recuperação (em andamento)

Atribuição sem sobreposição de escritores (para evitar corrida entre agentes):
- Subagentes em execução cobrem: `syntax-and-semantics`, `models-theories`,
  `proof-systems`, restante de `natural-deduction`, `completeness`, `beyond`.
- **12 arquivos órfãos** (nenhum subagente os tocaria) foram designados a um
  subagente de reparo dedicado: os 7 de `introduction/`, 3 de `natural-deduction`
  (`proving-things`, `proving-things-quant`, `identity`) e 2 de `beyond`
  (`second-order-logic`, `many-sorted-logic`).

## Conclusões / aprendizado de processo

1. **A base factual é o PDF, mas a base de corretude estrutural é o token.** A
   verificação de tradução precisa de duas camadas: (a) prosa em PT-BR; (b)
   integridade de tokens via diff contra o original.
2. **Ferramentas externas de tradução automática são incompatíveis** com o
   formato Open Logic: elas destroem tokens. Recomendação ao usuário: **desativar
   qualquer tradutor automático** (extensão de editor, DeepL/Google Translate em
   watch, etc.) que esteja monitorando a pasta `OpenLogic-traduzido`, sob pena de
   recorromper os reparos.
3. O reparo deve **sempre** partir do original inglês, nunca "consertar" o arquivo
   corrompido, pois a corrupção mistura idiomas e quebra a correspondência.
