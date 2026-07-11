# Relatório 00 — Inventário e base factual (PDF)

## Interpretação

O curso *Sets, Logic, Computation* compila a partir de `slc-screen.tex`, que inclui módulos do Open Logic via `\olimport*`. O que entra no PDF **não** é igual ao conjunto de todos os `.tex` no repositório: tags em `slc-config.sty` excluem sistemas de prova (axiomático, tableaux) e variantes `-alt` de alguns arquivos.

A fonte de verdade para **o que traduzir** é o PDF gerado (430 páginas) e, operacionalmente, a lista de arquivos `.tex` efetivamente incluídos na compilação (`slc-screen.fls`).

## Objetivos

- Extrair texto do PDF EN para verificação posterior.
- Listar seções na ordem do livro (via `slc-screen.toc`).
- Identificar arquivos `.tex` que de fato alimentam o PDF.
- Documentar exclusões por tag.

## Execução

| Item | Resultado |
|------|-----------|
| PDF EN | `OpenLogic-original/courses/sets-logic-computation/slc-screen.pdf` (430 pp) |
| Texto extraído | `verificacao/slc-en.txt` (~741 KB) |
| Inventário por seção | `verificacao/INVENTARIO-SECOES.md` (241 entradas do TOC) |
| Arquivos `.tex` no PDF | `verificacao/arquivos-tex-no-pdf.txt` (**323** arquivos em `content/`) |
| Cópia de trabalho | `OpenLogic-traduzido/` (compila 430 pp antes de traduzir) |

## Estrutura do livro (TOC factual)

1. **Prefácio** (+ notas para instrutores)
2. **Parte I** — Sets, Relations, Functions (caps. 1–4)
3. **Parte II** — First-order Logic (caps. 5–13)
4. **Parte III** — Turing Machines (caps. 14–15)
5. **Apêndice A** — Proofs
6. **Apêndice B** — Induction
7. **Apêndice C** — Biographies (9 logicians)
8. **Apêndice D** — Greek Alphabet
9. Glossário, créditos de fotos, bibliografia, sobre o OLP

Cada capítulo principal inclui **Summary** (`include/summary-N.tex`) e **Problems** (agregados via `open-logic-defer.sty`).

## Exclusões confirmadas (`slc-config.sty`)

- `\tagfalse{prfAX,prfTab}` — sem derivacao axiomatica nem tableaux no PDF
- `\tagtrue{prfND,prfSC}` — deducao natural e calculo de sequentes **incluidos**
- `enumerable` → renderizado como «countable» / «uncountable» neste curso

## Resultados

- Inventário gerado; mapeamento automático secao→arquivo é **aproximado** para títulos ambíguos — a lista `arquivos-tex-no-pdf.txt` (via `.fls`) é a referência definitiva do escopo de tradução.
- `OpenLogic-original/` permanece intocada; trabalho em `OpenLogic-traduzido/`.

## Conclusão

Objetivos da Fase 1 atingidos. Próximo passo: localização LaTeX (Fase 2) e tradução seção a seção com relatórios em `relatorios/`.
