# Relatório final — Finalização da tradução do SLC (sessão 1)

**Data:** 2026-07-10
**Livro:** OpenLogic — *Sets, Logic, and Computation* (curso SLC), edição PT-BR
**Build PT:** `OpenLogic/locale/pt/courses/sets-logic-computation-pt/slc-screen.pdf` — **457 páginas**
**Referência EN:** `OpenLogic-original/courses/sets-logic-computation/slc-screen.pdf` — 430 páginas

---

## 1. Resultado

Objetivo da sessão: tornar o PDF PT "o mesmo livro, só que em português" — fiel, completo, sem inglês residual nem mistraduções. **Atingido no essencial.**

| Métrica | Antes (pós-migração) | Depois (esta sessão) |
|---------|----------------------|----------------------|
| Inglês residual visível no PDF (por capítulo) | 2 focos reais (cap. 5, cap. 11) + secções corrompidas (13, 14.9) | **0 capítulos com inglês residual** |
| Secções corrompidas / meio-traduzidas | 5 (§5.7, §11.9, §13.1, §13.7, §14.9) | **0 (todas retraduzidas do EN)** |
| Tokens `!!{...}` corrompidos | 0 | 0 |
| Achados de auditoria (11C / 51G / 64M / 17E = 143) | — | **11/11 CRÍTICOS resolvidos; GRAVES e a maioria dos MENORES resolvidos** |
| Biografias em pt-PT | 5 de 9 | **0 (todas pt-BR)** |
| Páginas / erros fatais / "not marked pt" | 457 / 0 / 0 | 457 / 0 / 0 |

## 2. O que foi corrigido

### Retraduções do inglês (CRÍTICO)
- **§5.7** Substituição (`introduction/substitution.tex`)
- **§11.9** Derivabilidade e os Conectivos Proposicionais (`natural-deduction/provability-propositional.tex`) — via molde do cálculo de sequentes
- **§13.1** Introdução ao "Além da FOL" (`beyond/introduction.tex`)
- **§13.7** Outras lógicas (`beyond/other-logics.tex`)
- **§14.9** Variantes de máquinas de Turing (`variants.tex`)

### Config / infraestrutura (Fase 3)
- `bijecção`→`bijeção`; `metalogica`→`metalógica` (token + literal do prefácio); `\TAss`="Assumption"→"Hipótese"; plural do glossário "variáveiss"→"variáveis".

### Terminologia unificada
- `\Entails`→**"consequência"** (corpo, Def. 7.25, resumos e glossário); **"equinumeroso"**, **"emparelhamento"**, **"matriz"** (era "array"), **"da Teoria da Prova"**, **"mereologia/parte-todo"**.

### Padrões mecânicos (GRAVE/MENOR)
- "O.s."→"isto é" (~60); ordem "função sobrejetora" (~22); plurais de token; artigo duplicado (`um um`, `Uma Uma`, `a completo`); infinitivo do token (`deriva`→`derivar`, `LK deriva`); concordâncias de género/número; contrações de referência ("na/da/pela"); "0's"→"0s"; "infinitamente muitos"→"infinitos"; dialeto pt-PT→pt-BR nas biografias.

**Ficheiros alterados:** ~81 `.tex` de conteúdo (4 blocos) + `slc-config.sty`, `preface.tex`, `glossary.tex`, `summary-*.tex`.

## 3. Verificação (Fase 5)
- Rebuild limpo: 457 pp, **0 erros fatais**, **0 avisos "not marked pt"**.
- Scan de inglês residual por capítulo: **0 capítulos** com inglês residual real.
- Scan de tokens: **0 corrompidos**.
- Marcadores de corrupção confirmados **eliminados**: "há existem", "têm tem", "estruturaar", "fórmulada", "a completo conjunto", "sobrejetora função", "non-deterministic", "Polónia", "Prémio", "dezassete", "LK derivam".
- Leitura de amostra (§13.1, biografias): prosa fluente e correta em pt-BR.

## 4. O que fica por fazer (não bloqueia; para sessão futura)

Nenhum destes é erro de tradução que o leitor note como "meio inglês":

1. **Registo pt-PT no corpo dos caps. 1–4** (ESTILO): ênclise ("chama-se/diz-se"), "os seus", "nomeadamente", "se e só se". Corrigidas as trocas lexicais pontuais; a reescrita de parágrafos inteiros para pt-BR não foi feita (evita risco; não bloqueia).
2. **Bloco `editorial` de `sets-functions-relations.tex`** em inglês — é **nota de instrutor, não aparece no PDF do aluno**. Tradução opcional (higiene de fonte).
3. **Cosmético:** referências a problemas saem em versalete ("PROBLEMA 4.7") no PT, enquanto o EN usa minúsculas. É estilo de renderização do OLP (não cede a `\crefname`); não afeta a tradução.
4. **27 avisos `glo:`** (hyperlinks internos do glossário) — cosméticos; o glossário renderiza correto.
5. **Fiéis ao EN (não são erros):** X/Y no Resumo cap.1; `X\B` na Def. 2.34; ∉C na Prop. A.11; absorção (b) no Ap. A; "denumerable" §12.1; "Benedict/Keira" na bio de Turing.

## 5. Como rever
Comparar os dois PDFs, capítulo a capítulo:
- **PT:** `OpenLogic/locale/pt/courses/sets-logic-computation-pt/slc-screen.pdf`
- **EN:** `OpenLogic-original/courses/sets-logic-computation/slc-screen.pdf`
- Texto extraído lado a lado: `verificacao/comparacao-pdf/cap-NN-{en,pt}.txt` (índice em `INDICE.md`).

## 6. Rastreabilidade (pipeline, para o Richard)
Todos os passos documentados em `relatorios/finalizacao-slc/`:
- `00-diario-sessao-01.md` — cronologia (pensar→fazer→feito→decisões).
- `01-baseline-scans.md` — estado inicial e o que a migração já resolvera.
- `audit-cap-*.md` (4) — auditoria semântica por bloco (143 achados).
- `02-lista-mestre.md` — consolidação por causa-raiz.
- `decisoes-terminologia-config.md` — cada decisão de termo/config.
- `fix-log-caps-*.md` (4) — cada correção aplicada (ID, antes→depois).
- `RELATORIO-FINAL.md` — este documento.

**Nada foi commitado** aos repositórios do OpenLogic; todas as alterações são locais em `C:\Users\Pedro\Desktop\OpenLogic\locale\pt`.
