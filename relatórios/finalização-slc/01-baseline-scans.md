# Relatório de linha de base — scans automáticos (SLC, build novo)

**Data:** 2026-07-10
**Build analisado:** `OpenLogic/locale/pt/courses/sets-logic-computation-pt/slc-screen.pdf` (457 pp)
**Referência EN:** `OpenLogic-original/.../slc-screen.pdf` (430 pp)
**Ferramenta:** [scripts/scan_baseline_slc.py](../../scripts/scan_baseline_slc.py) + extração por capítulo + inspeção manual.

> Propósito: retrato objetivo do estado ANTES das correções. Os scans automáticos são **necessários mas não suficientes** — apanham inglês por traduzir e quebras estruturais, mas **não** apanham mistraduções nem PT truncado/artificial. Essa parte fica para a auditoria semântica (Fase 2).

---

## Veredicto rápido

| Dimensão | Resultado | Estado |
|----------|-----------|--------|
| Ficheiros de conteúdo no PDF | 176 | — |
| Tokens `!!{...}` corrompidos | **0** | Excelente |
| Inglês residual visível no PDF | **2 focos reais** (cap. 5, cap. 11) | Muito bom |
| Completude estrutural (caps/secções) | PT = EN + Glossário | Completo |
| Divergência com o inglês (fork vs master) | **0 real** (só 1 espaço em branco) | Não-problema |
| Glossário (27 avisos `glo:`) | Cosmético (hyperlinks internos); conteúdo aparece | Polir na Fase 3 |
| Conflitos de config (tokens duplicados) | 3 reais | Corrigir na Fase 3 |

**Conclusão:** a migração deixou o livro estruturalmente completo e quase sem inglês residual. O grosso do trabalho de qualidade que resta é **semântico** (Fase 2 → Fase 4), não de "traduzir o que falta".

---

## [A] Inventário — ficheiros incluídos no PDF

176 ficheiros `.tex` de `locale/pt/content` entram no build (via `slc-screen.fls`). É sobre estes que incidem todos os scans.

## [B] Integridade de tokens `!!{...}`

**0 ficheiros com tokens corrompidos.** Cada token PT existe no original inglês correspondente; nenhum `!!` malformado. A base estrutural da tradução (tokens da OLP) está intacta — a migração preservou-a.

## [C] Inglês residual visível no PDF (por capítulo)

Scan do texto extraído do PDF, filtrando falsos positivos (títulos de livros, nomes próprios, citações). Resultado por capítulo:

| Capítulo | Linhas EN reais | Notas |
|----------|-----------------|-------|
| **cap-11** Dedução Natural | **2** | (1) título de secção "Derivabilidade **and the Propositional** Connectives"; (2) frase meio-traduzida "Note that →Intro **may, but does not have to**, descarrega **the**…" |
| **cap-05** Intro FOL | **1** | frase meio-traduzida em `substitution.tex`: "…**but for any** fórmula A, **and term** t, e variável x." |
| ap-C, ap-D | 1 cada | **falsos positivos** (títulos de livros/biografias, `Entscheidungsproblem`, "Life and Logic") |
| Todos os outros (0–4, 6–10, 12–15, A, B) | **0** | — |

**Ficheiros-fonte a corrigir (Fase 4):**
- `first-order-logic/proof-systems/natural-deduction/provability-propositional.tex` (título + "and"/"may but does not have to")
- `first-order-logic/introduction/substitution.tex` (§5.7 — frase mista)
- `sets-functions-relations/sets-functions-relations.tex` — bloco `editorial` em inglês, **mas é nota de instrutor** (não aparece no PDF do aluno). Tradução opcional.

## [D] Completude estrutural

TOC comparado EN vs PT:

- **Partes:** 3 = 3. **Secções numeradas:** 180 = 180.
- **Capítulos:** EN 19 vs PT 20. A diferença é **+1 no PT**: o PT tem um capítulo **Glossário** que o EN (nesta build) não tem. Ou seja, PT = EN + Glossário. **Nenhum conteúdo em falta.**
- Contagens de ambientes (Definição/Teorema/…): variações de 1–8 explicadas por **prosa e citações** (ex.: as 8 ocorrências de "Proof" no PT são **títulos de livros** em bibliografias: "Book of Proof", "How to Do Proofs"…). Não indicam ambientes em falta.

## [E] Divergência com o inglês atual

Diff `OpenLogic-original/content` (base do fork) vs `OpenLogic/content` (master atual) para os 176 ficheiros: **1 ficheiro "muda"** (`turing-machines/machines-computations/introduction.tex`) e a única diferença é **um espaço em branco no fim** de uma linha. Na prática, **0 divergência de conteúdo** — a tradução partiu de um inglês essencialmente igual ao master atual. Não há re-sincronização a fazer.

## Glossário — as 27 refs `glo:`

- O `.latexmkrc` do curso corre `makeglossaries`; os ficheiros `.glo/.gls/.glg/.ist` são gerados; o **Glossário aparece populado** no PDF (ex.: "conjunto potência", "derivabilidade", "equinumeroso", "atribuição de variáveis").
- Os 27 avisos "`name{glo:...}` referenced but does not exist" são **hyperlinks internos** entre descrições de entradas do glossário (ex.: a entrada `po` referencia `\gls{transitive}`). Todas as 27 entradas **estão definidas** em [include/glossary.tex](../../../OpenLogic/locale/pt/courses/sets-logic-computation-pt/include/glossary.tex). É um artefacto multi-passo de `glossaries`+`hyperref`, **cosmético** (o nome é mostrado). A investigar/polir na Fase 3.
- Bug menor detetado: `\glspl{variable assignment}` → "atribuição de variáveis**s**" (plural mal formado; falta `plural=` na entrada).

## Conflitos de configuração (tokens duplicados) — corrigir na Fase 3

Tokens definidos em **dois** ficheiros (`locale/pt/open-logic-config.sty` do Richard e `slc-config.sty` migrado do Pedro). O último a carregar (`slc-config.sty`) vence:

| Token | `open-logic-config` (Richard) | `slc-config` (Pedro, vence) | Problema |
|-------|-------------------------------|------------------------------|----------|
| `bijection` | `bijeção` (pt-BR) | **`bijecção`** (pt-PT) | Grafia europeia num livro pt-BR → usar `bijeção` |
| `enumerable` | `enumerável` | definido **2×**: `{countable}` (inglês!) e depois `contável` | Linha `{countable}{countable}` é lixo; remover |
| `derive` | `{deriva}{deriva}` | `{deriva}{derivam}` | Reconciliar plural (menor) |
| `power set` | — | `conjunto potência` | Audit antigo pedia unificar com "conjunto das partes" (§1.2). Decisão de terminologia. |

---

## Implicações para as fases seguintes

1. **Fase 2 (auditoria semântica)** é onde está o verdadeiro trabalho: os scans dão "quase limpo", mas mistraduções e PT artificial só se apanham comparando EN↔PT à mão/por subagente. Prioridade de leitura: caps. 3, 5, 11, 13 (os que o audit antigo pontuou pior) + validação de que os restantes se mantêm bons.
2. **Fase 3 (infra/config)**: reconciliar os 3 conflitos de token, decidir `power set`, e investigar os avisos `glo:` + plural do glossário.
3. **Fase 4 (prosa)**: 2 focos certos de inglês residual (cap. 5 e cap. 11) + o que a Fase 2 encontrar.
4. **Divergência EN**: nada a fazer.
