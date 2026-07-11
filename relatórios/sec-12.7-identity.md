# Relatório — Seção 12.7 Identidade

## Interpretação

Trata da construção do modelo de termos quando a linguagem contém~$\eq$. O modelo de termos puro falha porque o valor de cada termo é ele mesmo, tornando $\eq[t][t']$ falsa para termos distintos. A solução é a "fatoração": define-se a relação de equivalência $\approx$ sobre termos fechados ($t \approx t'$ sse $\eq[t][t'] \in \Gamma^*$), prova-se que ela é congruência, e constrói-se o modelo de termos fatorado $\Struct{\equivclass{M}{\approx}}$ cujo domínio são as classes de equivalência. Conclui com o Lema da Verdade para esse modelo.

## Objetivos

Traduzir prosa, título, blocos explain/digress, e os enunciados de defn/prop/lem/prob para PT-BR; preservar LaTeX, tokens !!{...} (incluindo !!a{function}, !!a{predicate}, !!{enumerable}, !!a{domain}, !!{element}), matemática (\approx, \equivrep, \equivclass, \Setabs, \Trm), rótulos e referências.

## Plano

1. Traduzir \olsection{Identidade} e os dois blocos \begin{explain}.
2. Traduzir enunciados de \begin{defn}, \begin{prop}, \begin{lem}, \begin{proof} e \begin{prob} mantendo a matemática intacta.
3. Traduzir os comentários textuais dentro de \begin{align*} (text{ iff } → text{ se e somente se }; "by definition of" → "por definição de").
4. Traduzir o bloco \begin{digress} final.
5. Aplicar glossário (term model → modelo de termos; closed term → termo fechado; well defined → bem definida; representatives → representantes; factoring → fatoração).

## Execução

| Item | Valor |
|------|-------|
| Arquivo | OpenLogic-traduzido/content/first-order-logic/completeness/identity.tex |
| Original | OpenLogic-original/content/first-order-logic/completeness/identity.tex |
| Linhas | 205 |

## Resultados

Seção traduzida integralmente. Estrutura idêntica ao original (mesma contagem de linhas, mesmos ambientes, mesma matemática). Termos: "factoring" → "fatoração"; "closed term" → "termo fechado"; "term model" → "modelo de termos"; "well defined" → "bem definida"; "representatives" → "representantes"; "equivalence class" → "classe de equivalência"; "Truth Lemma" → "Lema da Verdade". Tokens !!a{function}, !!a{predicate}, !!{enumerable}, !!a{domain}, !!{element} preservados em inglês.

## Conclusão

12.7 Identidade concluída.
