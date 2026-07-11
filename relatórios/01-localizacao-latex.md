# Relatório 01 — Localização LaTeX

## Interpretação

Antes de traduzir prosa nos `.tex`, o PDF precisa de rótulos em português (capítulos, teoremas, problemas, sumário) e de tokens `!!{...}` resolvidos centralmente.

## Objetivos

- Babel/captions PT em `sty/open-logic.sty`
- Ambientes (Teorema, Definição, …) em `sty/open-logic-book-envs.sty`
- «Problemas» / «Resumo» em `open-logic-defer.sty` e `slc.tex`
- Metadados do livro em `slc-metadata.tex`
- Tabela inicial de tokens em `slc-config.sty`

## Execução

| Arquivo | Alteração |
|---------|-----------|
| `OpenLogic-traduzido/sty/open-logic.sty` | `main=english,brazilian`, captions PT, `\proofname` → Prova, créditos de imagens |
| `OpenLogic-traduzido/sty/open-logic-book-envs.sty` | Nomes de ambientes e `\crefname` em PT |
| `OpenLogic-traduzido/sty/open-logic-defer.sty` | Problemas (cabeçalhos) |
| `OpenLogic-traduzido/courses/sets-logic-computation/slc.tex` | Summary → Resumo |
| `OpenLogic-traduzido/courses/sets-logic-computation/slc-metadata.tex` | Título/subtítulo PT |
| `OpenLogic-traduzido/courses/sets-logic-computation/slc-config.sty` | Tokens PT-BR (cresce por seção) |

## Resultados

Compilação de verificação pendente após esta fase; tokens novos serão acrescentados conforme aparecem nas seções.

## Conclusão

Andaime de localização aplicado. Próximo: tradução do prefácio e das seções do livro.
