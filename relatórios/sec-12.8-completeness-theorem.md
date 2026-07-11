# Relatório — Seção 12.8 O Teorema da Completude

## Interpretação

Combina todos os resultados anteriores (Henkin, Lindenbaum, Construção do Modelo, Identidade) para enunciar e provar o teorema da completude em sua primeira versão ("se $\Gamma$ é consistente, então é satisfatível") e, por contraposição, sua segunda versão ("se $\Gamma \Entails !A$ então $\Gamma \Proves !A$"). Inclui exercícios sobre a equivalência das duas formulações e sobre quais regras de derivação são necessárias para a completude.

## Objetivos

Traduzir prosa, título, blocos explain, enunciados de thm/cor/proof/prob para PT-BR; preservar LaTeX, ramos \iftag{FOL}/\iftag{prvEx}, tokens !!{...} (incluindo !!a{sentence}, !!{complete}, !!{formula}, !!{derivation}), \tagrefs, \tagprob/\tagendprob, matemática e referências.

## Plano

1. Traduzir \olsection{O Teorema da Completude} e o bloco \begin{explain}.
2. Traduzir \begin{thm}[Teorema da Completude] e sua prova, respeitando os ramos \iftag{FOL}{...}{...} (concatenação "então, por" / "Por" antes de \olref[mod]{lem:truth}).
3. Traduzir \begin{cor}[Teorema da Completude, Segunda Versão] e sua prova (contraposição).
4. Traduzir os quatro blocos \tagprob (FOL/notFOL), preservando \olref e a estrutura.
5. Aplicar glossário (satisfiable → satisfatível; unsatisfiable → insatisfatível; consistent → consistente; inconsistent → inconsistente).

## Execução

| Item | Valor |
|------|-------|
| Arquivo | OpenLogic-traduzido/content/first-order-logic/completeness/completeness-thm.tex |
| Original | OpenLogic-original/content/first-order-logic/completeness/completeness-thm.tex |
| Linhas | 125 |

## Resultados

Seção traduzida integralmente. Estrutura \iftag preservada para gerar texto coerente tanto na versão FOL quanto PL. Termo novo aplicado: "unsatisfiable" → "insatisfatível". Detalhe de tradução: "!!a{derivation} system" → "um sistema de !!{derivation}" (o artigo em PT-BR liga-se a "sistema", não ao token; usa-se !!{derivation} sem artigo para evitar artigo duplicado). Tokens !!a{sentence}, !!{complete}, !!{formula}, !!{derivation} preservados em inglês.

## Conclusão

12.8 O Teorema da Completude concluída. Capítulo 12 (completeness) agora tem as seções 12.1–12.8 traduzidas; faltam 12.9 (compactness), 12.10 (compactness-direct) e 12.11 (downward Löwenheim–Skolem).
