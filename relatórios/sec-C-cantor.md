# Relatório — Biografia: Georg Cantor

## Interpretação

Seção biográfica (`\olsection{Georg Cantor}`) do capítulo de Biografias, usada no curso *Sets, Logic, Computation*. Narra a vida de Cantor, fundador da teoria dos conjuntos, com bloco `\begin{reading}` de leitura adicional.

## Objetivos

- Traduzir a prosa biográfica e o bloco `reading` para PT-BR.
- Preservar intactos: comandos LaTeX, `\olfileid`, `\olphoto{cantor-georg}{...}`, `\citet`/`\citep`, datas e nomes próprios.
- Manter consistência terminológica (matemático, teoria dos conjuntos).

## Plano

1. Manter `\olsection{Georg Cantor}` (nome próprio).
2. Traduzir os 4 parágrafos de prosa e o `reading`.
3. Converter datas por extenso ("January 6, 1918" → "6 de janeiro de 1918").
4. Manter o guia de pronúncia `\textsc{gay}-org \textsc{kahn}-tor` como está (auxílio fonético em inglês — comando LaTeX preservado).

## Execução

| Item | Ação |
|------|------|
| Arquivo | `OpenLogic-traduzido/content/history/biographies/georg-cantor.tex` |
| Título da seção | Mantido "Georg Cantor" |
| `\olphoto` | Preservado (`cantor-georg`, legenda "Georg Cantor") |
| Topônimos | Exônimos PT: São Petersburgo, Rússia, Berlim; mantido: Halle |
| Título de obra | `\emph{A Brief History of Mathematics}` mantido no original (programa da BBC) |
| Citações | `\citet{Dauben1990}`, `\citet{Rose2012}` etc. preservadas |

## Resultados

Arquivo traduzido integralmente. Terminologia: matemático, teoria dos conjuntos, números transfinitos. Nomes de pessoas (Kronecker, Bacon, Shakespeare) e o guia de pronúncia mantidos.

## Conclusão

Biografia de Cantor concluída em PT-BR, com estrutura LaTeX e referências intactas.
