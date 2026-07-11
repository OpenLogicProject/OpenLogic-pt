# Relatório — Seção B.6 Relações e Funções

## Interpretação

Mostra como definir relações e funções por indução sobre objetos definidos indutivamente (ex.: subtermo, profundidade). Discute a legibilidade única e por que definições indutivas exigem unicidade de leitura, com o contraexemplo dos termos sem colchetes.

## Objetivos

Traduzir prosa, título, definições, proposições e provas para PT-BR; preservar LaTeX, matemática (align*, \intertext, cases), tokens !!{...}, rótulos e referências.

## Plano

1. Traduzir \olsection, definições, prosa e \intertext{}.
2. Aplicar "termo bonito", "termos sem colchetes", "legibilidade única", "univocamente determinados".
3. Preservar rótulos/refs EXATAMENTE: \ollabel{defn:depth}, \olref[sti]{prop:initial}, \olref[mth][ind][rel]{defn:depth}.

## Execução

| Item | Valor |
|------|-------|
| Arquivo | OpenLogic-traduzido/content/methods/induction/relations.tex |

## Resultados

Seção retraduzida integralmente, substituindo a tradução automática anterior. Corrigido erro crítico: \olref{defn:profundidade} revertido para \olref{defn:depth} (rótulo nunca se traduz). \text{} dentro de \begin{cases} traduzido.

## Conclusão

B.6 Relações e Funções concluída.
