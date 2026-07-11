# Log de correções — SLC · Caps. 1–4 (fonte `.tex` em `locale/pt`)

**Data:** 2026-07-10
**Âmbito editado:** `OpenLogic/locale/pt/content/sets-functions-relations/{sets,relations,functions,size-of-sets}/*.tex`
**Base:** achados do relatório `audit-cap-00-04.md` (IDs A01–A04) + política `decisoes-terminologia-config.md`.
**Fora de âmbito (não tocado):** `include/` (prefácio/resumos), `slc-config.sty`/config, e as pastas `arithmetization/`, `infinite/`, `inductive-defs-proofs/` (o parent trata). Codificação UTF-8 preservada (edições via editor, sem BOM alterado).

Convenções do log: cada linha lista **ID · antes → depois** (resumido). "O.s." refere-se a `O.s.\@`/`O.s.\@,`/`O.s.:` → `isto é`/`isto é,`/`isto é:`.

---

## Cap. 1 — `sets/`

### `basics.tex`
- A01-01 · `O.s.\@,` → `isto é,` (1×, Probl. "conjunto vazio").
- A01-04 (ESTILO) · "partilham" → "compartilham".

### `important-sets.tex`
- A01-01 · `O.s.\@,` → `isto é,` (1×, "$\Rat \subsetneq \Real$").
- A01-03 · "infinitamente muitos !!{element}s" → "infinitos !!{element}s".

### `pairs-and-products.tex`
- A01-01 · `O.s.:` → `isto é:` (1×); `O.s.\@,` → `isto é,` (1×, "Palavras…").
- A01-02 · "Tendo **fixada** uma definição" → "Tendo **fixado** uma definição".
- A01-04 (ESTILO) · "partilham o mesmo primeiro elemento" → "compartilham…".

### `russells-paradox.tex`
- A01-01 · `O.s.\@,` → `isto é,` (2×). "não auto-membro" mantido (audit: aceitável).

### `unions-and-intersections.tex`
- A01-01 · `O.s.\@,` → `isto é,` (6×, incl. 2 dentro de `\text{…}` em `align*`).

### `proofs-about-sets.tex` *(seção removida por padrão; correção de consistência)*
- (A02-03 análogo) · "e.g." → "p.ex.".

---

## Cap. 2 — `relations/`

### `relations-as-sets.tex`
- A02-01 · `O.s.\@,` → `isto é,` (8×).
- A02-05 · "É importante **que** a ordem dos elementos **seja relevante**" → "É importante **notar que** a ordem dos elementos **\emph{importa}**" (corrige sentido: constatação, não desejo; = EN "does matter").
- A02-06 · "recordemos duas coisas **de** \olref{sec}" → "**da** \olref{sec}" (da seção).

### `trees.tex`
- A02-02 · "O conceito **teórico dos conjuntos de árvore**" → "O conceito **de árvore da teoria dos conjuntos**".
- A02-10 · "um nó $x$ **se encontra com** um nó $y$" → "um nó $x$ **está para** um nó $y$" (= EN "stands in to").
- A02-07 · "finitamente muitos sucessores" → "um número finito de sucessores"; "infinitamente muitos elementos/sucessores" → "infinitos …" (2×).
- A02-03 · "(e.g., …)" → "(p.ex., …)".
- A02-09 · **NÃO alterado**: `z \in X \setminus B` (falso positivo — idêntico ao EN).

### `graphs.tex`
- A02-03 · "diferem, e.g., quanto a" → "diferem, p.ex., quanto a".

### `operations.tex`
- A02-01 · `O.s.\@,` → `isto é,` (2×).
- A02-06 · "**Em** \olref{prop:stricttopartial}" → "**Na** \olref{prop:stricttopartial}".

### `orders.tex`
- A02-01 · `O.s.\@,` → `isto é,` (7×).
- A02-06 · "Apresente uma prova **de** \olref{prop:partialtostrict}" → "**da** \olref{…}".

### `equivalence-relations.tex`
- A02-01 · `O.s.\@,` → `isto é,` (4×).

*(Não editados por não terem achados: `special-properties.tex`, `reflections.tex`, `relations.tex`, `relations-complete.tex`. "nomeadamente" mantido — aceitável em pt-BR.)*

---

## Cap. 3 — `functions/`

### `inverses.tex`
- A03-01 · `O.s.\@,` → `isto é,` (6×).
- A03-02 · nota de rodapé: "questão a que … **a que** aqui não damos destaque" → remove duplicação (`{a que aqui não damos destaque}` → `{aqui não damos destaque}`).
- A03-04 (ESTILO) · "há que ter cuidado" → "é preciso ter cuidado"; "Noutras palavras" → "Em outras palavras" (2×).
- A03-06 · "Vimos **em** \olref[kin]{sec}" → "**na**"; "**por** \olref{prop:bijection-inverse}" → "**pela**"; "**Por** \olref{prop:left-right}" → "**Pela**".

### `function-basics.tex`
- A03-01 · `O.s.\@,` → `isto é,` (1×).
- A03-04 (ESTILO) · "nalgum (outro) conjunto" → "em algum (outro) conjunto"; "**Chamamos a $A$ o** domínio … **e a $B$ o** contradomínio" → "**Chamamos $A$ de** domínio … **e $B$ de** contradomínio"; "Noutras palavras" → "Em outras palavras"; "estamos **a apoiar-nos**" → "estamos **nos apoiando**"; "partilhem" → "compartilhem".

### `function-kinds.tex`
- A03-01 · `O.s.\@,` → `isto é,` (1×).

### `functions-relations.tex`
- A03-01 · `O.s.\@,` → `isto é,` (3×).
- A03-04 (ESTILO) · "partilham domínio" → "compartilham domínio"; "Noutras palavras" → "Em outras palavras" (2×); "pormenor" → "detalhe".
- A03-06 · "dadas **em** \olref{prop:graph-function}" → "**na**"; "como **em** \olref[…]{sec}" → "como **na**"; "na \olref[inv]{sec} **e** \olref[cmp]{sec}" → "… **e na** \olref[cmp]{sec}".

### `composition.tex`
- A03-01 · `O.s.\@,` → `isto é,` (2×).

---

## Cap. 4 — `size-of-sets/`

### `enumerability.tex`
- A04-01 (ordem do token) · `!!{surjective} função`/`!!a{surjective} função`/`!!a{injective} função`/`!!a{bijective} função` → `função !!{surjective}` / `uma função !!{…}` (≈13 ocorrências: defn, provas e problemas).
- A04-02 (plural) · `conjuntos/são … !!{enumerable}` → `!!{enumerable}s` (4×); `!!{surjective} funções` → `funções !!{surjective}s` (1×).
- A04-03 · "ele é **um** !!a{element}" → "ele é !!a{element}" (remove artigo duplicado).
- A04-08 · "está **garantido de ser** o valor" → "é **garantidamente** o valor".
- A04-11 · "**perfeitamente assim como**" → "**tão bem quanto**".
- A04-12 · "finitamente muitos" → "um número finito de" (3×); "infinitamente muitos" → "infinitos" (2×).
- A04-14 · "é dada **em** \olref{sec}" → "**na**"; "**Por** \olref{prop:enum-bij}" → "**Pela**"; "prova **de** \olref{prop:enum-shift}" → "**da**"; "De acordo **com** \olref{defn:enumerable}" → "**com a**".

### `equinumerous-sets.tex`
- A04-05 · título "Equipotência" → "Equinumerosidade"; "equipotente" → "equinumeroso"; "equipotência" → "equinumerosidade" (2×).
- A04-01 · "!!a{surjective} função $g$" → "uma função !!{surjective} $g$".
- A04-07 · `O.s.\@,` → `isto é,` (3×).
- A04-17 (ESTILO) · citação de Frege: "empregado de mesa" → "garçom", "ter **a** certeza" → "ter certeza", "não precisa **de** contar" → "não precisa contar"; "Há que mostrar" → "É preciso mostrar".

### `schroder-bernstein.tex`
- A04-05 · "equipotentes" → "equinumerosos" (2×); "equipotência" → "equinumerosidade".
- A04-07 · `O.s.\@,` → `isto é,` (1×).
- (ESTILO) · "Noutras palavras" → "Em outras palavras".

### `comparing-size.tex`
- A04-05 · "(ou equipotente)" → "(ou equinumeroso)".
- A04-09 · "sobrejectiva" → "sobrejetora" (2×).
- A04-07 · `O.s.\@,` → `isto é,` (3×).
- A04-14 · "permite reformular \oliflabeldef{thm…}" → "permite reformular **o** …"; "alinhada **com** \olref{sec}" → "**com a**"; "comparar a prova **de** \olref{thm:cantor} com a **de** \olref{thm…}" → "prova **do** … com a **do** …" (2 blocos).
- (ESTILO) · "de um conjunto **noutro**" → "em outro"; "Por outras palavras" → "Em outras palavras".

### `pairing.tex`
- A04-06 · "função de **pareamento**" → "função de **emparelhamento**" (6×, incl. título da Def.).
- A04-07 · `O.s.\@,` → `isto é,` (1×).
- (ESTILO) · "noutras/Noutras palavras" → "em/Em outras palavras" (2×).

### `non-enumerability.tex`
- A04-01 · "!!a{surjective} função $f$" → "uma função !!{surjective} $f$".
- A04-04 · "array" (prosa) → "matriz" (9×), com concordância de artigo (um/no/nosso array → uma/na/nossa matriz). **`\begin{array}`/`\end{array}` preservados.**
- A04-16 · `$0$'s`/`$1$'s` → `$0$s`/`$1$s` (16×).
- A04-12 · "infinitamente muitos" → "infinitos" (2×).
- A04-14 · "definição **em** \olref{sec}" → "**na**"; "versão **em** \olref{sec}" → "**na**".

### `reduction.tex`
- A04-01 · "!!a{surjective}/!!a{injective} função" → "uma função !!{surjective}/!!{injective}" (3×).
- A04-02 · "funções !!{surjective}" → "funções !!{surjective}s"; "!!{surjective}~$f$" → "!!{surjective}s~$f$".
- A04-16 · `$0$'s`/`$1$'s` → `$0$s`/`$1$s` (2×).
- A04-14 · "resultados **em** \olref{sec}" → "**na**" (2×); "fornecida **em** \olref{sec}" → "**na**"; "**Prova de** {\olref{thm}}" → "**Prova do**".

### `zig-zag.tex`
- A04-07 · `O.s.:` → `isto é:` (1×). (Já usava "matriz" e "zigue-zague" — sem outras mudanças.)

### `pairing-alt.tex`
- A04-04 · "array" (prosa) → "matriz" (2×). **`\begin{array}`/`\end{array}` preservados.**
- A04-01 · "!!a{injective} função" → "uma função !!{injective}".

### `non-enumerability-alt.tex`
- A04-07 · `O.s.\@,`/`O.s.:` → `isto é,`/`isto é:` (8×).
- A04-14 · "claro **em** \olref{sec}" → "**na**"; grafia "secção" → "seção".
- (ESTILO) · "há que mostrar" → "é preciso mostrar".

### `reduction-alt.tex`
- A04-07 · `O.s.\@,` → `isto é,` (2×).
- A04-09 · "sobrejectiva" → "sobrejetora".
- A04-14 · "encontra-se **em** \olref{sec}" → "**na**"; "**Prova de** {\olref{thm}}" → "**Prova do**"; grafia "secção" → "seção".
- (bloco comentado `%` com inglês/`$0$'s` deixado como está — não renderiza.)

### `enumerability-alt.tex`
- A04-07 · `O.s.\@,` → `isto é,` (1×).
- Grafia "secção" → "seção" (2×).

### `size-of-sets-complete.tex` *(agregador; só o `editorial` tem prosa)*
- Terminologia (família *surjective*) · "surjeções" → "sobrejeções"; "função sobrejetiva" → "função sobrejetora".
- A04-14 · "versões alternativas **de** \olref{sec}" → "**da**".

---

## Achados NÃO aplicados (com motivo)

- **A02-09** (`X \setminus B` em `trees.tex`, Def. 2.34) — **falso positivo**: idêntico ao EN; correção seria a montante.
- **A04-13** (`Probl. 4.7`: referência renderiza "PROBLEMA 4.6" em maiúsculas, `zig-zag.tex` L122) — **não aplicado**: é artefacto de macro/config (a linha usa `\cref{…}` cru com `\label`, não `\olref`/`\ollabel`; o "PROBLEMA" em caixa-alta vem do *crefname* na config). Correção pertence ao nível de config/macro (fora de âmbito). Recomenda-se ao parent: converter para `\olref`/`\ollabel` ou ajustar o crefname.
- **A03-03 / A04-10 / A00-01** (grafia `bijecção`→`bijeção`; `metalogic`) — **fora de âmbito**: são tokens em `slc-config.sty`.
- **A04-15** (`ziguezague` vs `zigue-zague`) — no corpo já é "zigue-zague"; a divergência está em `summary-4.tex` (**`include/`, fora de âmbito**).
- **A01-05 / C1-02** (X/Y no Resumo) — `include/summary-1.tex` (fora de âmbito) e = EN.
- **A02-04 / A03-05** (unificar `sse` ↔ `se e só se`; `p.ex.` etc.) — **não unificado**: `sse` é convenção aceite do projeto (falsos positivos do audit) e ambas as formas são válidas; unificar seria uma escolha editorial pervasiva sobre dezenas de linhas, não um erro pontual. Deixado para decisão do parent.
- **Registo pt-PT amplo** (A01-04/A02-08/A03-04/A04-17: ênclise "chama-se/diz-se", "os seus/a nossa", "nomeadamente", "gozam da propriedade", "convém enfatizar", "descodificar") — **não reescrito**: aplicaram-se apenas as trocas lexicais pontuais já identificadas (ver acima); a normalização ampla de registo foi deixada de fora conforme instrução ("não reescrevas parágrafos inteiros").

## Notas de terminologia / decisões tomadas
- Termo *equinumerosity* (substantivo): adotado **"equinumerosidade"** (o EN usa a palavra literal, não token); adjetivo **"equinumeroso"** conforme `decisoes-terminologia-config.md`.
- Reordenação de tipo de função: seguido o padrão já corrigido no Cap. 3 (`Uma função !!{surjective}`), preservando o artigo quando presente (`!!a{…} função` → `uma função !!{…}`).
- Correções de família *surjective* fora das tabelas mas de mesma classe (consistência com o token `sobrejetora`/`sobrejeção`): `sobrejetiva`→`sobrejetora`, `surjeções`→`sobrejeções` (`size-of-sets-complete.tex`); plural `funções !!{surjective}s` (`reduction.tex`).
- Grafia europeia `secção`→`seção` corrigida nos ficheiros `*-alt` (mesma classe de `sobrejectiva`→`sobrejetora`).
