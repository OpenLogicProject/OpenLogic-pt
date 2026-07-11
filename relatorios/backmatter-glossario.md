# Relatório — Glossário (backmatter)

## Interpretação

Arquivo `glossary.tex` do curso *Sets, Logic, Computation*: ~70 entradas `\newglossaryentry{<chave>}{...}` com campos `name`, `symbol` e `description`. As entradas cobrem conjuntos, relações, funções, tamanho de conjuntos, lógica de primeira ordem (sintaxe, semântica, prova) e computabilidade. As descrições contêm matemática, referências cruzadas `\olref`, e remissões `\gls{...}`/`\glspl{...}` a outras entradas.

## Objetivos

- Traduzir os campos `name` e `description` (prosa) para PT-BR.
- Preservar intactos: chaves `\newglossaryentry{<chave>}`, `symbol` (matemática), `\olref[...]{...}`, `\gls{<chave>}`/`\glspl{<chave>}`, `sort`, e todos os comandos/matemática.
- Garantir consistência com o glossário de tokens de `slc-config.sty`.

## Plano

1. Traduzir cada `name` usando a terminologia consagrada (conjunto, subconjunto, função, relação, derivação, satisfatível, etc.).
2. Traduzir cada `description`, mantendo math, `\olref` e as chaves dentro de `\gls{}`/`\glspl{}` (que imprimem o `name` traduzido da entrada referenciada).
3. Traduzir o texto dentro de `\text{...}` em modo matemático (`\text{ and }` → `\text{ e }`; `\text{ for some ...}` → `\text{ para algum ...}`).
4. Tratar os tokens `!!{...}` conforme as regras (ver Observações).

## Execução

| Item | Ação |
|------|------|
| Arquivo | `OpenLogic-traduzido/courses/sets-logic-computation/include/glossary.tex` |
| Chaves | Todas as `\newglossaryentry{<chave>}` preservadas (identificadores) |
| `\gls`/`\glspl` | Chaves preservadas; imprimem o `name` PT da entrada-alvo |
| `symbol` | Preservado (ex.: `\ensuremath{A \times B}`, `\ensuremath{\Gamma \Proves !A}`) |
| `\olref` | Todas as remissões de seção preservadas |
| `\text{...}` | Conteúdo traduzido (and→e, for some→para algum, and→e) |
| `sort` | Mantido (ex.: `sort={x-variant}`) |

### Decisões terminológicas (consistência)

- entailment → **acarretamento**; entails → acarreta
- soundness → **correção**; completeness → **completude**
- derivability → derivabilidade; derivation → derivação
- assumption → **hipótese**; discharged → descarregada; undischarged → não descarregada
- satisfiable → satisfatível; valid → válida; consistent/inconsistent → consistente/inconsistente
- range → imagem; codomain → contradomínio; closure → fecho
- eigenvariable → variável própria
- covered (structure) → coberta

## Observações

- **Token `!!a{derivation}`**: nas entradas `soundness` e `completeness`, o original tinha `!!a{derivation} system` ("a derivation system"). Em PT a ordem é "um sistema de derivação"; o artigo recai sobre "sistema". Para manter o token (sem traduzir seu conteúdo "derivation") e produzir PT gramatical e robusto na compilação, adotou-se `um sistema de !!{derivation}`. O conteúdo do token foi preservado; apenas o artigo foi reposicionado para o substantivo correto.
- Os tokens entre chaves simples (ex.: `{element}`, `{sentence}`, `{formula}`) são agrupamentos LaTeX comuns (não `!!{...}`); seu conteúdo foi traduzido (elemento, sentença, fórmula) mantendo-se as chaves.
- Concordância de gênero/número: onde `\gls{}` (singular) seria usado junto a um substantivo plural, reformulou-se para o singular (ex.: "com toda hipótese \gls{discharged}") a fim de preservar o comando e a gramática.

## Resultados

Glossário traduzido integralmente para PT-BR (campos `name` e `description`), com matemática, referências cruzadas, símbolos e remissões `\gls` intactos. Terminologia alinhada a `slc-config.sty` e aos resumos do curso.

## Conclusão

`glossary.tex` concluído em PT-BR. A ordenação impressa passará a seguir os nomes em português; chaves e remissões permanecem funcionais.
