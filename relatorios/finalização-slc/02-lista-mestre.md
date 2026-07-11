# Lista-mestre consolidada — o que RESTA corrigir no SLC (PT)

**Data:** 2026-07-10
**Base:** os quatro relatórios de auditoria por bloco ([00-04](audit-cap-00-04.md), [05-08](audit-cap-05-08.md), [09-12](audit-cap-09-12.md), [13-15+ap](audit-cap-13-15-apendices.md)) + [linha de base](01-baseline-scans.md).

## Contagem global (143 achados)

| Bloco | CRÍTICO | GRAVE | MENOR | ESTILO |
|-------|:-:|:-:|:-:|:-:|
| Caps 0–4 | 0 | 12 | 24 | 4 |
| Caps 5–8 | 1 | 4 | 11 | 6 |
| Caps 9–12 | 2 | 4 | 14 | 3 |
| Caps 13–15 + Ap | 8 | 31 | 15 | 4 |
| **Total** | **11** | **51** | **64** | **17** |

Notas por capítulo (auditoria): Pref 4,6 · C1 4,0 · C2 3,7 · C3 4,1 · **C4 2,9** · **C5 2,5** · C6 4,5 · C7 4,0 · C8 4,3 · C9 3,5 · C10 3,8 · **C11 2,5** · C12 3,5 · **C13 insuf.** · C14 (só §14.9) · C15 4,5 · ApA/B 4,5 · **ApC (dialeto)** · ApD ok.

---

## Organização por CAUSA-RAIZ (= plano de correção)

A maioria dos 143 achados agrupa-se em ~12 causas. Corrigir a causa resolve muitas ocorrências.

### GRUPO 1 — Config/tokens (Fase 3; fix único → muitas ocorrências)
| # | Ação | Ficheiro | Corrige |
|---|------|----------|---------|
| G1.1 | `bijection`: `{bijecção}` → `{bijeção}{bijeções}` (pt-BR) | `slc-config.sty` L119 | A03-03, A04-10, D13-23 |
| G1.2 | `metalogic`: `{metalogica}` → `{metalógica}` | `slc-config.sty` L342 | A00-01 |
| G1.3 | remover linha lixo `enumerable`→`{countable}` (inglês) | `slc-config.sty` | baseline |
| G1.4 | localizar `\TAss` → "Hipótese" (tableau) | (macro a localizar) | C09-01 |
| G1.5 | glossário: `variable assignment` sem `plural=` → "variáveiss"; investigar 27 avisos `glo:` | `include/glossary.tex` | baseline |

### GRUPO 2 — "O.s." (abreviatura manual artificial de "ou seja")
Literal na fonte (~dezenas em `sets-functions-relations/`). Substituir `O.s.\@` → **"isto é"** (ou "ou seja") nos ficheiros do SLC.
Corrige: A01-01, A02-01, A03-01, A04-07. **Fase 4 (search-replace controlado).**

### GRUPO 3 — Secções corrompidas/meio-traduzidas (retraduzir do EN; NÃO remendar)
| # | Secção | Ficheiro | IDs |
|---|--------|----------|-----|
| G3.1 | §5.7 Substituição | `first-order-logic/introduction/substitution.tex` | B05-01..04 (1 CRÍT) |
| G3.2 | §11.9 Derivabilidade e Conectivos | `first-order-logic/natural-deduction/provability-propositional.tex` | C11-01, C11-02 (1 CRÍT) |
| G3.3 | §13.1 Introdução | `first-order-logic/beyond/introduction.tex` | D13-01..11 (7 CRÍT) |
| G3.4 | §13.7 Outras lógicas | `first-order-logic/beyond/other-logics.tex` | D13-19..28 |
| G3.5 | §14.9 Variantes | `turing-machines/machines-computations/variants.tex` | D14-01..17 (1 CRÍT) |
| G3.6 | editorial (só fonte, não no PDF) | `first-order-logic/beyond/beyond.tex` | D13-30 |
Molde para G3.2: o homólogo já traduzido `sequent-calculus/provability-propositional.tex`.

### GRUPO 4 — Artigo manual duplicado antes de `!!a{...}`/`!!^a{...}`
Remover o artigo manual (o token já o gera). "um um", "Uma Uma", "Tal uma", "a completo".
Corrige: A04-03, B05-05, C09-02, C12-01, D13-12 (5×), D13-17, D15-01(parc). **Fase 4, por ocorrência.**

### GRUPO 5 — Ordem adjetivo de tipo de função (não propagada a caps 4/15)
`!!{surjective} função` → `função !!{surjective}` (e idem injective). Alguns já corretos (comparing-size L67); corrigir os invertidos.
Ficheiros: `size-of-sets/enumerability.tex` (L89,95,…), `reduction*.tex`, `undecidability/universal-tm.tex`. Corrige A04-01, D15-01. **Fase 4.**

### GRUPO 6 — Tokens verbais sem infinitivo (`derive`/`prove`/`discharge`/`structure`/`formula`)
Token gera forma finita ("deriva", "descarrega") ou composto quebrado ("estruturaar", "fórmulada"). Onde o texto precisa de infinitivo/outro, usar a palavra literal na fonte.
Corrige: C09-03, C10-01, C11-03, C11-04, D13-13, D13-18, D14 vários. **Fase 4, por contexto.**

### GRUPO 7 — Concordância de género/número (MENOR, dispersos)
"outros estruturas"→"outras estruturas"; "o/do derivação"→"a/da"; "gerados"→"geradas"; "Uma símbolo"→"Um símbolo"; "conjuntos contável"→"contáveis" (usar `!!{enumerable}s`); "descarregada"→"descarregadas"; "completo"→"completa"; etc.
Corrige: B05-06..09, B06-01/02, B07-02, C09-04, C10-02/03/04, C11-05..08, C12-02/03, D13-09/11, D14-17, D15-02. **Fase 4.**

### GRUPO 8 — Terminologia a unificar (decidir política + aplicar)
| Conceito | Variantes | Decisão proposta |
|----------|-----------|------------------|
| `entails`/`\Entails` | consequência / implica / acarretamento | **"consequência" / "é consequência de"** |
| equinumerosity | equipotência / equinumeroso | **"equinumeroso"** |
| pairing | pareamento / emparelhamento | **"emparelhamento"** (token) |
| proof-theoretic | prova-teórica / Teoria da Prova | **"da Teoria da Prova"** |
| parthood | de parte / parte-todo | **"mereologia"/"parte-todo"** |
| array | array (EN) / matriz | **"matriz"** |
| sobrejectiva | -ct- (pt-PT) | **"sobrejetora"** |
Corrige: B07-01, B08-01/02, C11-09, A04-04/05/06/09. **Fase 3 (decisão) + Fase 4 (aplicar).**

### GRUPO 9 — Dialeto pt-PT → pt-BR
| # | Onde | Sev |
|---|------|-----|
| G9.1 | Ap. C: 5 biografias em pt-PT (Cantor, Gödel, Russell, Tarski, Zermelo) | GRAVE (DAP-C-01) |
| G9.2 | corpo caps 1–4 (ênclise, "os seus", "se e só se", "nalgum", "pormenor", "empregado de mesa") | ESTILO |
| G9.3 | §5.7 e outras prosas com sabor pt-PT | ESTILO |
Corrige: DAP-C-01, A01-04, A02-08, A03-04, A04-17, B05-11. **Fase 4.**

### GRUPO 10 — Contração preposição+artigo em referências cruzadas
"em Proposição"→"na Proposição"; "de seção"→"da seção"; "por Proposição"→"pela Proposição"; "Em seção"→"Na seção".
Corrige: A02-06, A03-06, A04-14, D14-18, D15-03, C5-09(resto). **Fase 4.**

### GRUPO 11 — Typos/artefactos pontuais visíveis
"como como" (A00-02); "a que a que" (A03-02); "tópicos como como"; "Göttigen"→"Göttingen" (DAP-C-02); "PROBLEMA 4.6" maiúsculas (A04-13); "0's e 1's" (A04-16); maiúsculas a meio de frase ("As Derivações", "Máquinas", "Fórmulas", "estruturas") por `!!^{...}` mal usado. **Fase 4.**

### GRUPO 12 — "infinitely/finitely many" (calco)
"infinitamente muitos"→"infinitos"; "finitamente muitos"→"um número finito de".
Corrige: A01-03, A02-07, A04-12, B05-11. **Fase 4.**

---

## Falsos positivos confirmados (NÃO corrigir)
- Matemática "errada" fiel ao EN: X/Y no Resumo cap.1 (C1-02); `X\B` na Def. 2.34 (A02-09); ∉C na Prop. A.11; absorção (b) no Ap. A; "Theorems … applies" (Lema 12.6); "other sequents" em DN.
- Símbolos, nomes próprios/históricos (Kőnig, Gödel, …), siglas, URLs, títulos de livros/filmes/podcasts, termos latinos (modus ponens, reductio), alemão (Entscheidungsproblem), "sse", "𝛤s".
- "contem" (subjuntivo correto de contar); "gráfico de uma função"; artefactos de extração `pdftotext` ("Lde", "⊤abrevia").

---

## Ordem de execução (impacto × esforço)

1. **Fase 3 — Config (G1) + decisões de terminologia (G8):** fix único, recompilar, medir.
2. **Fase 4A — Secções corrompidas (G3):** retraduzir §5.7, §11.9, §13.1, §13.7, §14.9 do EN (o grosso dos CRÍTICOS).
3. **Fase 4B — Dialeto Ap. C (G9.1):** uniformizar 5 biografias.
4. **Fase 4C — Padrões mecânicos:** G2 (O.s.), G4 (artigo duplo), G5 (ordem função), G6 (infinitivos), G10 (contrações), G12 (calcos).
5. **Fase 4D — Concordâncias e typos (G7, G11).**
6. **Fase 4E — Estilo pt-BR no corpo (G9.2/9.3)** — se o tempo permitir; não bloqueia.
7. **Fase 5 — Rebuild + re-extrair + re-scan + re-auditoria dos piores (C4, C5, C11, C13, §14.9, ApC).**

**Princípio:** cada correção parte do **original inglês** (`OpenLogic-original/content/...`), nunca remendo sobre texto já corrompido.
