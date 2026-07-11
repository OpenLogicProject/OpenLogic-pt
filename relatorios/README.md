# Relatórios do processo de tradução (PT)

Esta pasta reúne a documentação técnica do processo de tradução e
adaptação para português dos livros do Open Logic Project — sobretudo o
*Sets, Logic, Computation* (SLC) e o *Set Theory*. Servem o **próximo
tradutor**: mostram como o trabalho foi planeado, executado, auditado e
verificado, para que o pipeline seja reconstituível.

Estão em português e são documentos de **processo** (não fazem parte dos
livros). Ficam aqui, dentro da localização, porque é onde um tradutor os
procuraria.

## Nota histórica (importante para ler sem confusão)

Muitos relatórios foram escritos **antes** da consolidação no repositório
`OpenLogic-pt`. Por isso aparecem caminhos e nomes antigos que já **não**
correspondem à estrutura atual. Equivalências:

- `OpenLogic-original/` → o repositório inglês upstream (`OpenLogic`).
- `OpenLogic-traduzido/` → a cópia de trabalho da tradução, que veio a
  tornar-se **`locale/pt/`** neste repositório.
- Referências a repositórios separados por livro (ex.: um `set-theory-pt`
  autónomo) → hoje tudo vive num só repositório, `OpenLogic-pt`, com os
  cursos em **`locale/pt/courses/<livro>-pt/`**.
- `relatorios/finalizacao-slc/` (sem acento, em textos antigos) → a pasta
  atual chama-se **`finalização-slc/`**.

O conteúdo técnico (achados, decisões, correções) mantém-se válido; só os
caminhos mudaram conforme acima.

## Ordem de leitura sugerida

### 1. Visão geral e base factual (raiz)

Ler por ordem numérica:

- `00-inventario-base-factual.md` — o que o PDF inclui de facto (escopo de
  tradução via `.fls`/`.toc`), estrutura do livro e exclusões por tag.
- `01-localizacao-latex.md` — a localização LaTeX (babel, tokens, captions).
- `02-integridade-tokens-corrupcao-externa.md` — integridade dos tokens
  `!!{...}` e deteção de corrupção.
- `03-comparacao-qualidade-traducao-en-pt.md` — relatório mestre da
  comparação EN↔PT, com plano de correção por fases.
- `04-migracao-slc-framework-openlogic.md` — a migração para o framework
  consolidado do Open Logic Project.

### 2. Finalização do SLC (`finalização-slc/`)

A sessão de finalização (correção e polimento), na ordem do pipeline:

- `00-diario-sessao-01.md` — diário cronológico (pensar → fazer → decidir).
- `01-baseline-scans.md` — estado inicial e o que a migração já resolvera.
- `audit-cap-00-04.md`, `audit-cap-05-08.md`, `audit-cap-09-12.md`,
  `audit-cap-13-15-apendices.md` — auditoria semântica por bloco.
- `02-lista-mestre.md` — consolidação dos achados por causa-raiz.
- `decisoes-terminologia-config.md` — decisões de terminologia e de config.
- `fix-log-caps-00-04.md`, `fix-log-caps-05-08.md`, `fix-log-caps-09-12.md`,
  `fix-log-caps-13-15-apendices.md` — registo de cada correção (antes→depois).
- `05-producao-gitinfo-e-capa.md` — produção: gitinfo2 (créditos) e capa.
- `RELATORIO-FINAL.md` — síntese final da sessão.

### 3. Comparação de qualidade por bloco (`comparação-qualidade/`)

- `README.md` — método e severidades (CRÍTICO/GRAVE/MENOR/ESTILO).
- `caps-00-04.md`, `caps-05-08.md`, `caps-09-12.md`,
  `caps-13-15-apendices.md` — comparação EN↔PT capítulo a capítulo.

### 4. Auditorias por secção (`sec-*.md` na raiz)

Cerca de 90 ficheiros `sec-<n>-<nome>.md`, um por secção do livro (ex.:
`sec-2.6-trees.md`, `sec-12.4-henkin-expansion.md`, `sec-C-turing.md`), mais
`backmatter-glossario.md`. São as notas de auditoria detalhadas por secção,
consultadas pontualmente ao rever uma secção específica.

## Legenda de severidades (usada nas auditorias)

- **CRÍTICO** — erro de sentido, token corrompido, `\ref` quebrado, matemática errada.
- **GRAVE** — inglês residual visível, omissão de parágrafo, terminologia errada.
- **MENOR** — typo, registo inadequado, calco ingénuo.
- **ESTILO** — preferência de redação (não bloqueia publicação).
- **FALSO_POSITIVO** — token inglês correto, nome próprio, citação.
