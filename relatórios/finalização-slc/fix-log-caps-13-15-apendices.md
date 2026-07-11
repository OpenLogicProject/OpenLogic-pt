# Fix-log — Correções aplicadas · Caps. 13–15 + Apêndices (SLC)

**Livro:** OpenLogic — *Sets, Logic, and Computation* (SLC)
**Bloco:** Cap. 13 (Além da FOL) · §14.9 (Variantes de MT) · Cap. 15 (Indecidibilidade) · Ap. C (Biografias)
**Base:** `relatorios/finalizacao-slc/audit-cap-13-15-apendices.md`
**Verdade (EN):** `OpenLogic-original/content/…`
**Data:** 2026-07-10 · **Codificação:** UTF-8

Todas as edições em `OpenLogic/locale/pt/content/…` (apenas texto PT). LaTeX, tokens `!!{…}`,
`\olref`, `\ollabel`, `\olfileid[pt]`, ambientes e matemática preservados exatamente. Nenhum
`.sty`/config, `include/` ou outra pasta foi tocado.

## Resumo

| Severidade | No audit | Aplicados | Não aplicados |
|------------|:-------:|:---------:|:-------------:|
| CRÍTICO | 8 | **8** | 0 |
| GRAVE | 31 (+1 só-fonte) | **32** | 0 |
| MENOR | 15 | **14** (13 na fonte + 1 via config) | 1 (DAP-C-03) |
| ESTILO | 4 | 0 | 4 (opcionais) |

- **Ficheiros editados:** 17
- **Secções retraduzidas do EN (do zero):** §13.1 `introduction.tex`, §13.7 `other-logics.tex`, §14.9 `variants.tex`
- **Editorial higienizado (não renderiza):** `beyond.tex`

## Ficheiros editados (17)

**`first-order-logic/beyond/` (7)**
1. `introduction.tex` — **retraduzido** (§13.1) → D13-01…11
2. `other-logics.tex` — **retraduzido** (§13.7) → D13-19…21, 25, 26, 27, 28
3. `beyond.tex` — editorial → D13-30
4. `many-sorted-logic.tex` — D13-12 (4×)
5. `second-order-logic.tex` — D13-12 (1×), D13-16, D13-17
6. `higher-order-logic.tex` — D13-13, D13-14, D13-15, D13-22
7. `modal-logics.tex` — D13-18, D13-24

**`turing-machines/` (5)**
8. `machines-computations/variants.tex` — **retraduzido** (§14.9) → D14-01…19
9. `machines-computations/disciplined-machines.tex` — D14-20
10. `undecidability/universal-tm.tex` — D15-01, D15-03 (1×)
11. `undecidability/representing-tms.tex` — D15-02
12. `undecidability/trakhtenbrot.tex` — D15-03 (2×)

**`history/biographies/` (5)**
13. `georg-cantor.tex` — DAP-C-01
14. `kurt-goedel.tex` — DAP-C-01
15. `bertrand-russell.tex` — DAP-C-01
16. `alfred-tarski.tex` — DAP-C-01
17. `ernst-zermelo.tex` — DAP-C-01, DAP-C-02

## Detalhe por ID

### Capítulo 13
| ID | Sev | Ficheiro | Aplicado |
|----|-----|----------|----------|
| D13-01…07 | CRÍT | introduction.tex | Retradução: "há existem"→"há"; "filosófico. senso?"→"filosófico?"; "de A 'verdade'"→"de ``verdade''"; "Para Por exemplo"→"Por exemplo"; "cada um essas concepções requerem"→"cada uma dessas concepções requer"; "Mesmo que um restringe"→"Mesmo que se restrinja"; "momento chuvoso. dia"→"dia chuvoso" |
| D13-08 | GRAVE | introduction.tex | "não não admitem"→"não admite" |
| D13-09 | GRAVE | introduction.tex | gênero uniformizado: "verdadeiras … a priori … independentemente … em virtude … por convenção" |
| D13-10 | GRAVE | introduction.tex | "um semântica pretendida"→"uma semântica pretendida" |
| D13-11 | GRAVE | introduction.tex | "iniciado"→"iniciada"; "deve ser aceito … lógicas"→"devem ser aceitas como lógicas"; final "não são puramente lógicos" |
| D13-12 | GRAVE | many-sorted (4×), second-order (1×) | removido "um" manual antes de `!!a{domain}` (o token já gera "um domínio") |
| D13-13 | GRAVE | higher-order | `!!{formula}da`→`formulada` (literal) |
| D13-14 | GRAVE | higher-order | "Dados alguns ``tipos'' básicos"→"Dadas algumas ``ordenações'' básicas … (que agora chamaremos de ``tipos'')" |
| D13-15 | GRAVE | higher-order | "lógica de muitos tipos … um tipo"→"lógica de múltiplas ordenações … uma ordenação" |
| D13-16 | GRAVE | second-order | "leemos"→"lemos" |
| D13-17 | GRAVE | second-order | "Tal !!a{structure}"→"Uma tal !!{structure}" |
| D13-18 | GRAVE | modal | `!!{structure}ar`→`estruturar` (2×) + "estruturar a necessidade" |
| D13-19 | GRAVE | other-logics | "habilidades … propriedades"→"propriedades matemáticas e computacionais" |
| D13-20 | GRAVE | other-logics | "Lógicas padrão … são projetados"→"lógicas \emph{default} (de exceções) … são projetadas" |
| D13-21 | GRAVE | other-logics | "o primário a motivação … filosófica, matemático"→"a principal motivação … filosófica, matemática" |
| D13-22 | MENOR | higher-order | `!!^{formula}s`→`!!{formula}s` ("As fórmulas") |
| D13-23 | MENOR | — | **via config** (`slc-config.sty` L119 `bijection`→`bijeção`, já feito na Fase 3); fonte usa o token, renderiza correto — sem edição de fonte |
| D13-24 | MENOR | modal | `!!{structure}s de Kripke`→`!!^{structure}s de Kripke` (maiúscula em início de parágrafo) |
| D13-25 | MENOR | other-logics | "criar … e crie"→"montar … e elaborar" (infinitivos) |
| D13-26 | MENOR | other-logics | "diversão limpa"→"diversão sadia" |
| D13-27 | MENOR | other-logics | "modelo de raciocínio" (2×)→"modelar o raciocínio" |
| D13-28 | MENOR | other-logics | "no diante de"→"diante de"; "vagos propriedades"→"propriedades vagas"; "nunca alcance"→"nunca alcancemos"; "sistema derivação"→"sistema de `!!{derivation}`" |
| D13-29 | ESTILO | — | **não aplicado** (opcional; mantido "semântica pretendida") |
| D13-30 | GRAVE* | beyond.tex | "fornece a o"→"fornece o"; "em um claro"→"em um curso"; "nível parcial tratamento"→"tratamento em nível de parte"; "notas lógicas"→"notas de lógica" |

### Capítulo 14 (§14.9 + §14.7)
| ID | Sev | Ficheiro | Aplicado |
|----|-----|----------|----------|
| D14-01 | CRÍT | variants | "and new state-symbol-direction triples"→"e novas triplas estado-símbolo-direção" |
| D14-02 | GRAVE | variants | "…D} and \tuple{…}"→"…D} quanto \tuple{…}" ("tanto … quanto") |
| D14-03 | GRAVE | variants | "non-deterministic"→"não determinística" |
| D14-04 | GRAVE | variants | "não quite trabalho"→"não funciona \emph{muito bem}" |
| D14-05 | GRAVE | variants | "Pudermos contorne"→"Podemos contornar" |
| D14-06 | GRAVE | variants | "forma mais restrita definição"→"definição mais restrita" |
| D14-07 | GRAVE | variants | "e mover-se"→"e se mova" |
| D14-08 | GRAVE | variants | "escrever ou em movimento"→"escrever ou mover" |
| D14-09 | GRAVE | variants | "mover a fita cabeça"→"mover a cabeça da fita" |
| D14-10 | GRAVE | variants | "outras formas"→"Em outros aspectos"; "a N 'instrução'"→"a ``instrução'' `$\TMstay$`" |
| D14-11 | GRAVE | variants | removido "é" final da lista |
| D14-12 | GRAVE | variants | "parada designada especial estado"→"estado de parada especial designado" |
| D14-13 | GRAVE | variants | "Desde … são infinitos"→"Como … são infinitas" |
| D14-14 | GRAVE | variants | "um Turing máquina"→"uma máquina de Turing" |
| D14-15 | GRAVE | variants | "poderíamos definimos … ele pare"→"poderíamos tê-la definido … ela pare" |
| D14-16 | GRAVE | variants | "unário representação … Esse"→"representação unária … Isso" |
| D14-17 | MENOR | variants | concordâncias: "das quais a nossa é apenas uma"; "outras"; "a fita"; "uma função"; "ela para"; "determinada"; "Estas"; "todas elas"; "infinita" |
| D14-18 | MENOR | variants | "em `\olref[hal]{sec}`"→"na `\olref[hal]{sec}`" |
| D14-19 | MENOR | variants | "Máquinas de Turing"→"máquinas de Turing" |
| D14-20 | MENOR† | disciplined-machines | "Na seção `\olref[hal]{sec}`"→"Na `\olref[hal]{sec}`" (elimina "seção seção"; o EN herda o bug) |

### Capítulo 15
| ID | Sev | Ficheiro | Aplicado |
|----|-----|----------|----------|
| D15-01 | GRAVE | universal-tm | "há !!a{surjective} função … Tal !!a{surjective} função"→"há uma função !!{surjective} … Uma tal função !!{surjective}"; "de $\Nat$ a essas"→"de $\Nat$ nessas" |
| D15-02 | MENOR | representing-tms | "Uma !!{constant}"→"Um !!{constant}"; "Uma !!{function}"→"Um !!{function}" (Def. 15.9, itens 3–4) |
| D15-03 | MENOR | universal-tm (1×), trakhtenbrot (2×) | "Em `\olref[…]{sec}`"→"Na `\olref[…]{sec}`" / "em `\olref[rep]{sec}`)"→"na `\olref[rep]{sec}`)" |
| D15-04 | ESTILO | — | **não aplicado** (opcional) |

### Apêndice C (biografias → pt-BR)
| ID | Sev | Ficheiro | Aplicado |
|----|-----|----------|----------|
| DAP-C-01 | GRAVE | cantor, goedel, russell, tarski, zermelo | Uniformização dialetal pt-PT→pt-BR (ver detalhe abaixo) |
| DAP-C-02 | MENOR | zermelo | `G\"{o}ttigen`→`G\"{o}ttingen` |
| DAP-C-03 | MENOR | (turing) | **não aplicado** — "Bendict"/"Kiera" **herdados literalmente do EN** (`alan-turing.tex` l.63) e o Turing está fora do âmbito (pt-BR, "não mexer") |

**Alterações dialetais DAP-C-01 (por marcador):**
- Datas "morreu/nasceu/faleceu **a** X de mês" → "**em** X de mês" (Cantor, Zermelo, Gödel, Russell, Tarski)
- Vocabulário: "Polónia"→"Polônia"; "Prémio"→"Prêmio" ("da Literatura"→"de Literatura"); "República Checa"→"República Tcheca"; "dezassete"→"dezessete"; "zona de fumadores"→"área de fumantes"; "reformar-se"→"aposentar-se"; "despedido/despedimento"→"demitido/demissão"; "doutoramento"→"doutorado"; "napoleónico"→"napoleônico"; "digressão de conferências"→"turnê de palestras"; "liceu"→"colégio"; "deitar fora"→"jogar fora"; "cesto do lixo"→"cesto de lixo"; "Nova Jérsia"→"Nova Jersey"; "a todo o custo"→"a todo custo"; "até ao/até à"→"até o/até"
- Artigo+possessivo "o seu/a sua/os seus/as suas/ao seu/das suas" → "seu/sua/seus/suas/…" (drop do artigo)
- Ênclise→próclise (com sujeito/elemento anteposto): "doutorou-se"→"se doutorou"; "dedicava-se"→"se dedicava"; "deslocaram-se"→"se deslocaram"; "deteriorou-se"→"se deteriorou"; "recusou-se"→"se recusou"; "interessou-se"→"se interessou"; "refletia-se"→"se refletia"; "encontrava-se"→"se encontrava"; "casou (com)"→"se casou (com)". (Ênclise em início de frase mantida: "Mudou-se", "Irritou-se", "Destacou-se".)

## Não aplicados (com motivo)
- **D13-29, D15-04, DAP-A-01, DAP-B-01** (ESTILO) — fora do âmbito pedido (CRÍTICO/GRAVE/MENOR); são preferências de redação.
- **DAP-C-03** (MENOR) — typo de nomes próprios **herdado do EN** (verificado: `Bendict Cumberbatch and Kiera Knightley` no original) e biografia do Turing marcada como "não mexer".
- **D13-23** (MENOR) — resolvido em config (Fase 3), não na fonte.

## Falsos positivos preservados (guarda-rails)
Não alterados: matemática herdada do EN (∉C na Prop. A.11; absorção (b) no Ap. A); "section section" do EN em `disciplined-machines.tex` fica correto só no PT; títulos em inglês (*Principia Mathematica*, *On Denoting*, *Investigations in the Calculus of Variations*, *Collected Papers*, *A Brief History of Mathematics*, *The Imitation Game*…); nomes próprios/instituições (Institute for Advanced Study, McMaster, Bertrand Russell Research Centre); "Entscheidungsproblem"; pronúncias (`\textsc{gay}-org \textsc{kahn}-tor`, `\textsc{ger}-dle`); toda a bibliografia (`\citet`/`\citep`).
