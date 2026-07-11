# Fix-log — Aplicação de correções EN→PT (SLC) · Caps. 5–8

**Livro:** OpenLogic — *Sets, Logic, and Computation*
**Base:** `relatorios/finalizacao-slc/audit-cap-05-08.md` · terminologia `decisoes-terminologia-config.md`
**Verdade:** inglês em `OpenLogic-original/content/first-order-logic/…`
**Âmbito editado:** `OpenLogic/locale/pt/content/first-order-logic/{introduction,syntax-and-semantics,models-theories}/*.tex`
**Data:** 2026-07-10 · **UTF-8** · LaTeX/tokens/`\olref`/`\ollabel`/matemática preservados · sem erros de linter

---

## Resumo

- **Ficheiros editados:** 12
- **Correções aplicadas:** 1 CRÍTICO · 4 GRAVE · 9 MENOR · 2 ESTILO (grupos) = **16 IDs**
- **Não aplicados:** 6 IDs (motivos abaixo — fora de âmbito `include/`, falso positivo, ou já-correto na fonte)

| Cap. | Ficheiros | IDs aplicados |
|------|-----------|---------------|
| 5 | 8 | B05-01..12 |
| 6 | 2 | B06-01, B06-02 |
| 7 | 2 | B07-01, B07-02 |
| 8 | 0 | — (ver não-aplicados) |

---

## Capítulo 5 — `introduction/`

### `substitution.tex` — §5.7 (retradução das partes afetadas a partir do inglês)
Retraduzido o bloco meio-traduzido; removido inglês residual, corrigidos tokens verbais e restaurado o bicondicional.

- **B05-01 (CRÍTICO)** inglês residual + tokens crus:
  - `Nossos sistemas !!{derivation}` → `Nossos sistemas de !!{derivation}`
  - `but for any !!{formula}~$!A$, and term~$t$, e` → `mas para qualquer !!{formula}~$!A$, e termo~$t$, e`
  - `operação de \emph{substitution}` → `operação de \emph{substituição}`
  - `você tem !!{derive}d $\lforall…` → `você tiver derivado $\lforall…` (token `!!{derive}d` gerava "derivad"; substituído por particípio literal)
- **B05-02 (GRAVE)** frases quebradas:
  - `deveriam permitir\nnós !!{derive}` → `deveriam permitir-nos\nderivar` (infinitivo literal)
  - `como um\nregra de inferência` → `como uma\nregra de inferência`
  - `enunciá-lo em\nos termos` → `enunciá-lo\nnos termos`
  - `mas vamos\nconsidere também` → `mas vamos\nconsiderar também`
  - `todos os ~$x$ estão em ~$!A$` → `todos os ~$x$ em ~$!A$`
  - `temos\npara provar novamente` → `temos\nde provar novamente`
  - `…substituir $x$ por ~$t$''\nsignificar?` → `…substituir $x$ por ~$t$''?` (removido duplo "significa/significar")
- **B05-03 (GRAVE)** erro semântico:
  - `se $\Sat{M}{!A(t)}$ é válido ou não` → `se $\Sat{M}{!A(t)}$ vale ou não`
  - `depende\napenas no valor` → `depende\napenas do valor`
- **B05-04 (GRAVE)** bicondicional + "picked out":
  - `!!{element} de ~$\Domain{M}$ é selecionado por ~$t$` → `!!{element} de ~$\Domain{M}$ que for selecionado por ~$t$`
  - `$\Sat{M}{!A(t)}[s]$ se $\Sat{M}{!A(x)}…` → `$\Sat{M}{!A(t)}[s]$ se, e somente se, $\Sat{M}{!A(x)}…`
- **B05-12 (ESTILO, parte §5.7)** entails → consequência:
  - `no sentido\nque $\lforall[x][!A(x)]$ implica ~$!A(t)$` → `no sentido\nde que $!A(t)$ é consequência de $\lforall[x][!A(x)]$`
  - `Isso $\lforall[x][!A(x)]$ implica~$!A(t)$\ndepende` → `Que $!A(t)$ seja consequência de $\lforall[x][!A(x)]$\ndepende`

### `satisfaction.tex` — §5.4
- **B05-05 (MENOR)** artigo duplicado: `. Uma !!^a{structure}~$\Struct{M}$ consiste` → `. !!^a{structure}~$\Struct{M}$ consiste` (o token `!!^a{structure}` já gera "Uma")

### `formulas.tex` — §5.3
- **B05-06 (MENOR)** género: `e uma única\n!!{constant}~$\Obj a$` → `e um único\n!!{constant}~$\Obj a$` (token = "símbolo de constante", masc.)
- **B05-07 (MENOR)** género: `!!{function}s que podem ser combinadas` → `!!{function}s que podem ser combinados` (token = "símbolos de função", masc.)
- **B05-11 (ESTILO)** calque: `permitiremos infinitamente muitos` → `permitiremos infinitos`; `Precisamos de\ninfinitamente muitas !!{variable}s` → `Precisamos de\ninfinitas !!{variable}s`

### `sentences.tex` — §5.5
- **B05-08 (MENOR)** género: `na parte do !!{sentence}` → `na parte da !!{sentence}` (sentença, fem.)
- **B05-09 (MENOR)** género: `Tomaremos os !!{sentence}s como sendo todos aqueles !!{formula}s` → `Tomaremos as !!{sentence}s como sendo todas aquelas !!{formula}s`

### `soundness-completeness.tex` — §5.9
- **B05-10 (MENOR)** maiúscula indevida: `As !!^{derivation}s são sempre disposições` → `As !!{derivation}s são sempre disposições` (`!!^{}` capitalizava a meio de frase)

### `syntax.tex` — §5.2
- **B05-11 (ESTILO)** calque: `somos permitidos a formar !!{sentence}s` → `nos é permitido formar !!{sentence}s` (proclise após "pelas quais")

### `first-order-logic.tex` — §5.1
- **B05-12 (ESTILO)** entails → consequência: `$\lexists[x][!A(x)]$ juntas\nimplicam~$\lexists[x][!B(x)]$` → `$\lexists[x][!B(x)]$ é consequência de $\lforall…$\ne $\lexists[x][!A(x)]$ em conjunto`

### `models-theories.tex` — §5.8
- **B05-11 (ESTILO, consistência)** calque: `conjunto de infinitamente muitas !!{sentence}s` → `conjunto de infinitas !!{sentence}s` (mesma decisão terminológica; não é ID distinto, incluído para não deixar o termo inconsistente com §5.3)

---

## Capítulo 6 — `syntax-and-semantics/`

### `main-operator.tex` — §6.5
- **B06-01 (MENOR)** género: `existe !!a{main\n  operator}.` → `existe um !!{main\n  operator}.`
  O token `!!a{main operator}` gerava artigo feminino ("a operador"); substituído por `um !!{main operator}` para forçar o masculino correto, preservando o token de terminologia. (Fiel ao EN "a main operator exists" → indefinido "um"; o atalho do audit dizia "o", mas o inglês é indefinido.)

### `free-vars-sentences.tex` — §6.8 (Def. Escopo)
- **B06-02 (MENOR)** contração: `são \emph{ligadas por} a\nocorrência` → `são \emph{ligadas pela}\nocorrência` (por + a = pela)

---

## Capítulo 7 — `syntax-and-semantics/`

### `semantic-notions.tex` — §7.1 / Def. 7.25
- **B07-01 (GRAVE)** alinhar título e corpo da Def. "Consequência" (evitar "implica"):
  - Def.: `Um conjunto de sentenças~$\Gamma$ \emph{implica} uma sentença~$!A$, $\Gamma \Entails !A$` → `Uma sentença~$!A$ é \emph{consequência} de um conjunto de sentenças~$\Gamma$, $\Gamma \Entails !A$`
  - prova (prop. validade): `portanto $\Gamma$ não implica $!A$.` → `portanto $!A$ não é consequência de $\Gamma$.`
  - prova (ded. semântica): `como $\Gamma \cup \{ !A \}$ implica $!B$, obtemos` → `como $!B$ é consequência de $\Gamma \cup \{ !A \}$, obtemos`

### `structures.tex` — §7.2
- **B07-02 (MENOR)** género: `há muitos outros !!{structure}s possíveis` → `há muitas outras !!{structure}s possíveis` (estruturas, fem.)

---

## Não aplicados (com motivo)

| ID | Sev | Motivo |
|----|-----|--------|
| **B06-03** | ESTILO | A fonte já usa `!!{subformula}` → "subfórmula" (sem hífen) em toda a parte, incluindo a Prop. 6.32. O "sub-fórmula" do PDF é **artefacto de hifenização em quebra de linha**, não erro de fonte. Nada a alterar. |
| **B06-04** | ESTILO | "predicado" vs "símbolo de predicado" resulta de **escolha deliberada de token** (`!!{predicate}` sobreposto para "predicado" em `slc-config.sty` L319). Não é erro pontual; alterar prosa manual excederia "trocas lexicais pontuais". |
| **B07-03** | ESTILO | Apenas verificação de consistência prosa↔token; coerente. Sem alteração. |
| **B08-01** | MENOR | Corpo (`theories.tex`) é **fiel ao EN** e internamente consistente ("mereologia" p/ campo, "parte" p/ *parthood*). O termo divergente "relação parte-todo" está só no **Resumo** (`include/summary-8.tex`), **fora do âmbito**. Alinhar só o corpo não unificaria e exigiria reescrita não-pontual. Adiado. |
| **B08-02** | MENOR | "acarretamento/acarretada" existe apenas no **Resumo** (`include/summary-8.tex`), **fora do âmbito**. O corpo (`models-theories/introduction.tex`) já usa "consequência dos axiomas". |
| **B08-03** | ESTILO | **Falso positivo** (guarda-rail): "Lde/La/Lna" são artefactos de extração `pdftotext` após `$\Lang$`, não erros do PDF renderizado. |
| **B07-01 (Resumo)** | GRAVE | A parte da Def. 7.25 e provas foi corrigida; o **Resumo** ("é acarretada por") está em `include/summary-7.tex`, **fora do âmbito**. |

**Nota:** As correções de "entails → consequência" nos **Resumos** (Caps. 7 e 8) requerem editar `locale/pt/courses/sets-logic-computation-pt/include/summary-7.tex` e `summary-8.tex`, explicitamente **excluídos** do âmbito desta tarefa.
