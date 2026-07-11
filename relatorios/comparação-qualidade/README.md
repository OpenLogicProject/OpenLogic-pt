# Comparação qualitativa EN ↔ PT (curso SLC)

Auditoria **manual** da qualidade da tradução, capítulo a capítulo.

## Fontes

| Tipo | EN | PT |
|------|----|----|
| PDF | `OpenLogic-original/.../slc-screen.pdf` (430 pp.) | `OpenLogic-traduzido/.../slc-screen.pdf` (452 pp.) |
| Texto extraído | `verificacao/comparacao-pdf/*-en.txt` | `verificacao/comparacao-pdf/*-pt.txt` |
| LaTeX fonte | `OpenLogic-original/content/...` | `OpenLogic-traduzido/content/...` |

## Índice de extração

Ver `verificacao/comparacao-pdf/INDICE.md`.

## Relatórios por bloco (subagentes)

| Ficheiro | Capítulos |
|----------|-----------|
| `caps-00-04.md` | Prefácio, 1–4 |
| `caps-05-08.md` | 5–8 (FOL intro, sintaxe, semântica, modelos) |
| `caps-09-12.md` | 9–12 (sistemas de prova, sequentes, ND, completude) |
| `caps-13-15-apendices.md` | 13–15, A, B, C |

## Síntese global

Ver **`relatorios/03-comparacao-qualidade-traducao-en-pt.md`** — relatório mestre com notas por capítulo, achados transversais e **plano de correção Fases A–E** (execução pendente de aprovação).

## Severidades

- **CRÍTICO** — erro de sentido, token corrompido, label `\ref` quebrado, matemática errada
- **GRAVE** — inglês residual visível, omissão de parágrafo, terminologia errada
- **MENOR** — typo, registro inadequado, calco ingénuo
- **ESTILO** — preferência de redação (não bloqueia publicação)
- **FALSO_POSITIVO** — token inglês correto, nome próprio, citação
