# Auditoria de qualidade EN→PT (pt-BR) — Caps. 13–15 + Apêndices A–D (SLC)

**Livro:** OpenLogic — *Sets, Logic, and Computation* (SLC)
**Bloco:** Cap. 13 (Além da FOL) · Cap. 14 (Computações de MT) · Cap. 15 (Indecidibilidade) · Ap. A (Provas) · Ap. B (Indução) · Ap. C (Biografias) · Ap. D (Alfabeto Grego)
**Data:** 2026-07-10
**Método:** leitura do PDF PT (`verificacao/comparacao-pdf/*-pt.txt`) como primário, comparação semântica com o PDF EN (`*-en.txt`) e verificação no LaTeX fonte (`OpenLogic/locale/pt/content/…` e `OpenLogic-original/content/…`). **Nenhum ficheiro-fonte foi alterado.**

## Severidades

| Sev. | Critério |
|------|----------|
| **CRÍTICO** | Erro de sentido, token corrompido, frase quebrada/meio-traduzida, matemática errada |
| **GRAVE** | Inglês residual visível, palavra corrompida por token, terminologia errada, artigo duplicado, decalque que quebra a gramática |
| **MENOR** | Concordância isolada, typo, capitalização, contração ausente |
| **ESTILO** | Preferência de redação (não bloqueia publicação) |

## Resumo por capítulo

| Bloco | CRÍT | GRAVE | MENOR | ESTILO | Veredicto |
|-------|:----:|:-----:|:-----:|:------:|-----------|
| **Cap. 13** | 7 | 14 | 7 | 1 | **Insuficiente** — §13.1 e §13.7 com tradução automática corrompida; §13.4/§13.6 com tokens quebrados (+1 GRAVE só-fonte, não no PDF) |
| **Cap. 14** | 1 | 15 | 4 | 0 | **§14.9 insuficiente** (o resto é bom) — `variants.tex` cheio de inglês residual e frases quebradas |
| **Cap. 15** | 0 | 1 | 2 | 1 | **Muito bom** — só 1 GRAVE (§15.3) e detalhes menores |
| **Ap. A** | 0 | 0 | 0 | 1 | **Muito bom** — tradução fiel; erros de matemática são herdados do EN (falsos positivos) |
| **Ap. B** | 0 | 0 | 0 | 1 | **Muito bom** |
| **Ap. C** | 0 | 1 | 2 | 0 | **Bom com ressalva GRAVE** — 5 das 9 biografias estão em **português europeu** |
| **Ap. D** | 0 | 0 | 0 | 0 | **Muito bom** (alfabeto + glossário consistentes) |
| **TOTAL** | **8** | **31** | **15** | **4** | (+1 GRAVE só-fonte no editorial de §13) |

Nota global do bloco: **3/5** (puxada para baixo por §13.1, §13.7 e §14.9, que continuam essencialmente no estado do audit antigo, e pela inconsistência dialetal do Ap. C).

---

## Capítulo 13 — Além da lógica de primeira ordem

**Fonte:** `first-order-logic/beyond/` · **PDF PT:** pp. 287–308

§13.1 (`introduction.tex`) e o editorial (`beyond.tex`) continuam com prosa de tradução automática corrompida — **idêntico ao estado descrito no audit antigo**. Abaixo os defeitos reais e visíveis (verificados no `.tex` fonte).

| ID | Sev | Local | EN | PT atual | Correção |
|----|-----|-------|----|----------|----------|
| D13-01 | CRÍTICO | §13.1 | "there are many extensions" | "não é o único sistema de lógica de interesse: **há existem** muitas extensões" | "…há muitas extensões" (ou "existem muitas") |
| D13-02 | CRÍTICO | §13.1 | "have to do with the word 'logic', used in the intuitive or philosophical sense?" | "…de primeira ordem **têm tem** a ver com a palavra 'lógica', usada no sentido intuitivo ou **filosófico. senso?**" | "…têm a ver com a palavra 'lógica', usada no sentido intuitivo ou filosófico?" |
| D13-03 | CRÍTICO | §13.1 | "the notion, like that of 'truth,' has been analyzed" | "a noção, como a **de A 'verdade'** tem sido analisada" | "…como a de 'verdade', tem sido analisada" |
| D13-04 | CRÍTICO | §13.1 | "For example, one might take the goal…" | "**Para Por exemplo**, pode-se considerar que o objetivo…" | "Por exemplo, pode-se considerar…" |
| D13-05 | CRÍTICO | §13.1 | "each of these conceptions requires a good deal of clarification" | "e **cada um essas concepções requerem** bastante esclarecimento" | "e cada uma dessas concepções requer bastante esclarecimento" |
| D13-06 | CRÍTICO | §13.1 | "Even if one restricts one's attention to…" | "**Mesmo que um restringe** a atenção ao tipo de lógica…" | "Mesmo que se restrinja a atenção…" |
| D13-07 | CRÍTICO | §13.1 | "leave such philosophical issues for a rainy day, and simply think" | "deixar essas questões filosóficas para um **momento chuvoso. dia**, e simplesmente pense" | "…para um dia chuvoso, e simplesmente pensar…" |
| D13-08 | GRAVE | §13.1 | "a good deal … Quine, whose ontology **does not admit** 'propositions'" | "cuja ontologia **não não admitem** 'proposições'" | "cuja ontologia não admite 'proposições'" |
| D13-09 | GRAVE | §13.1 | "the determination of which statements are necessarily true, true a priori, true independent…" | "é **o determinação** … necessariamente **verdadeiras**, **verdadeiras** a priori, **verdadeiro** independente…, **verdadeiro** em virtude…" | "é a determinação … verdadeiras, verdadeiras a priori, verdadeiras independentemente…" (uniformizar gênero) |
| D13-10 | GRAVE | §13.1 | "an intended semantics" | "geralmente, mas nem sempre, **um semântica pretendida**" | "…uma semântica pretendida/intencional" |
| D13-11 | GRAVE | §13.1 | "the logicist tradition begun by Frege … some forms of higher-order reasoning should be accepted as logical" | "tradição logicista **iniciado** por Frege … formas de raciocínio de ordem superior **deve ser aceito** como lógico … não são puramente **lógicas**" | "…iniciada por Frege … devem ser aceitas como lógicas … não são puramente lógicos" |
| D13-12 | GRAVE | §13.2, §13.3 | "a domain of numbers, a domain of…" | "ter **um um domínio** de números, **um um domínio** de objetos…" (5×) | remover o "um" antes do token `!!a{domain}` (que já gera "um domínio") |
| D13-13 | GRAVE | §13.4 | "higher-order logic is often **formulated**" | "é frequentemente **fórmulada** em termos de funções" | "…formulada…" (token `!!{formula}da` gera a palavra corrompida "fórmulada") |
| D13-14 | GRAVE | §13.4 | "some basic 'sorts' A, B, C … (which we will now call 'types')" | "Dados alguns **'tipos'** básicos A, B, C … (que agora chamaremos de 'tipos')" | "Dadas algumas 'ordenações' básicas … (que agora chamaremos de 'tipos')" |
| D13-15 | GRAVE | §13.4 | "a kind of **many-sorted logic**, where there is a **sort** for each type of object" | "um tipo de **lógica de muitos tipos**, em que há um **tipo** para cada tipo de objeto" | "…lógica de múltiplas ordenações, em que há uma ordenação para cada tipo de objeto" |
| D13-16 | GRAVE | §13.3 | "if we read ⊢ as 'proves in the minimal system'" | "se **leemos** ⊢ como 'demonstra no sistema mínimo'" | "se lemos / se lermos ⊢…" ("leemos" é espanhol) |
| D13-17 | GRAVE | §13.3 | "Such a structure is called full" | "**Tal uma estrutura** é chamada plena" | "Uma tal estrutura é chamada plena" (token `!!a{structure}` gera "uma estrutura") |
| D13-18 | GRAVE | §13.6 | "In addition to **structuring** necessity … to **structure** other linguistic constructions" | "Além de **estruturaar** necessidade … para **estruturaar** outras construções" | "Além de estruturar/modelar a necessidade … para estruturar outras…" (token `!!{structure}ar` → palavra corrompida com "aa") |
| D13-19 | GRAVE | §13.7 | "exploring your logic's mathematical and computational properties" | "explorando as **habilidades** matemáticas e computacionais da sua lógica **propriedades**" | "explorando as propriedades matemáticas e computacionais da sua lógica" |
| D13-20 | GRAVE | §13.7 | "Default logics and nonmonotonic logics are designed to model…" | "**Lógicas padrão** e lógicas não monotônicas **são projetados** para modelar…" | "Lógicas *default* (de exceções) e lógicas não monotônicas são projetadas…" |
| D13-21 | GRAVE | §13.7 | "Depending on whether the primary motivation … is philosophical, mathematical, or computational" | "Dependendo se **o primário a motivação** … é **filosófica, matemático** ou computacional" | "Dependendo se a principal motivação … é filosófica, matemática ou computacional" |
| D13-22 | MENOR | §13.4 | "Formulas are built up from…" | "As **Fórmulas** são construídas a partir de…" (F maiúsculo no meio da frase) | "As fórmulas são construídas…" (usar `!!{formula}`, não `!!^{formula}`) |
| D13-23 | MENOR | §13.3 | "f is a bijection" | "f é uma **bijecção**" | "…bijeção" (grafia pt-PT vinda do token `!!a{bijection}`) |
| D13-24 | MENOR | §13.6 | "Kripke structures can be used…" | "**estruturas** de Kripke podem ser usadas…" (minúscula no início de parágrafo) | "Estruturas de Kripke…" (usar `!!^{structure}`) |
| D13-25 | MENOR | §13.7 | "make up a deductive system, and fashion a semantics" | "criar um sistema dedutivo e **crie** uma semântica" | "…e criar uma semântica" (misturou infinitivo e imperativo) |
| D13-26 | MENOR | §13.7 | "you can enjoy hours of good, clean fun" | "horas de coisas boas, **diversão limpa**" | decalque de *clean fun*; ex.: "horas de diversão sadia" |
| D13-27 | MENOR | §13.7 | "designed to model reasoning about knowledge … causal logics, designed to model reasoning about…" | "projetadas para **modelo de raciocínio** sobre o conhecimento … projetada para **modelo de raciocínio**…" (2×) | "projetadas para modelar o raciocínio sobre…" (*model* é verbo) |
| D13-28 | MENOR | §13.7 | outras: "in the face of new information"; "vague properties"; "We may never attain"; "if you want the derivation system to be complete" | "no **diante de** novas informações"; "raciocínio sobre **vagos propriedades**"; "Nós talvez nunca **alcance**"; "o **sistema derivação** seja completo" | "diante de novas informações"; "propriedades vagas"; "talvez nunca alcancemos"; "o sistema de derivação" |
| D13-29 | ESTILO | §13.1, §13.6 | "an/the intended semantics" | "semântica **pretendida**" | preferir "semântica intencional" em contexto técnico |
| D13-30 | GRAVE* | `beyond.tex` (editorial) | "gives the briefest of glimpses … in a course that does not cover them … its own part-level treatment" | "fornece **a o** mais breve vislumbre … para estudo em **um claro** que não os cobre … seu próprio **nível parcial tratamento**" | "fornece o mais breve vislumbre … num curso que não os cobre … seu próprio tratamento em nível de parte" |

\* D13-30 está corrompido **no fonte**, mas o bloco `editorial` **não é renderizado no PDF do SLC** (o capítulo passa direto do título para §13.1). Não é visível ao leitor; corrigir mesmo assim para higiene da fonte.

---

## Capítulo 14 — Computações de Máquinas de Turing

**Fonte:** `turing-machines/machines-computations/` · **PDF PT:** pp. 311–340

§14.1–14.8 e §14.10 estão **bons** (fluidos, terminologia estável). Todo o problema está concentrado em **§14.9 (`variants.tex`)**, que segue com inglês residual real e frases quebradas — pior do que o audit antigo registrou.

| ID | Sev | Local | EN | PT atual | Correção |
|----|-----|-------|----|----------|----------|
| D14-01 | CRÍTICO | §14.9 | "a relation between current state-symbol pairs ⟨q,σ⟩ **and new state-symbol-direction triples** ⟨q′,σ′,D⟩" | "…entre pares estado-símbolo atuais ⟨q,σ⟩ **and new state-symbol-direction triples** ⟨q′,σ′,D⟩" | "…e novas triplas estado-símbolo-direção ⟨q′,σ′,D⟩" (frase inteira em inglês no corpo) |
| D14-02 | GRAVE | §14.9 | "may contain ⟨q,σ,q′,σ′,D⟩ **and** ⟨q,σ,q″,σ″,D′⟩" | "pode conter ⟨q,σ,q′,σ′,D⟩ **and** ⟨q,σ,q″,σ″,D′⟩" | "…D⟩ e ⟨q,σ,q″,σ″,D′⟩" |
| D14-03 | GRAVE | §14.9 | "a **non-deterministic** Turing machine" | "uma máquina de Turing **non-deterministic**" | "uma máquina de Turing não determinística" |
| D14-04 | GRAVE | §14.9 (nota) | "This doesn't **quite work**" | "Isso não **quite trabalho**" | "Isso não funciona muito bem" (inglês residual + *work* traduzido como substantivo) |
| D14-05 | GRAVE | §14.9 (nota) | "We can get around this by adding…" | "**Pudermos contorne** isso adicionando…" | "Podemos contornar isso adicionando…" |
| D14-06 | GRAVE | §14.9 | "a more restricted definition may allow only two tape symbols" | "uma **forma mais restrita definição** pode permitir apenas dois símbolos" | "uma definição mais restrita pode permitir…" |
| D14-07 | GRAVE | §14.9 | "write a symbol on the tape and move at the same time" | "escreva um símbolo na fita **e mover-se** ao mesmo tempo" | "escreva um símbolo na fita e se mova ao mesmo tempo" |
| D14-08 | GRAVE | §14.9 | "other definitions allow either writing or movement" | "outras definições permitem **escrever ou em movimento**" | "…permitem escrever ou mover" |
| D14-09 | GRAVE | §14.9 | "writing without moving the tape head" | "escrever sem mover a **fita cabeça**" | "…sem mover a cabeça da fita" |
| D14-10 | GRAVE | §14.9 | "omit the N 'instruction'. **In other ways**, our definition is more restrictive" | "omitem a N 'instrução'. **outras formas**, nossa definição é mais restritiva" | "…a 'instrução' N. Em outros aspectos, nossa definição…" |
| D14-11 | GRAVE | §14.9 | "determines what the new symbol, state, and tape head position is" | "determina qual é o novo símbolo, estado e a posição da cabeça da fita **é**" | remover o "é" final ("…e a posição da cabeça da fita") |
| D14-12 | GRAVE | §14.9 | "the machine be in a special designated halting state" | "a máquina esteja em uma **parada designada especial estado**" | "…em um estado de parada especial designado" |
| D14-13 | GRAVE | §14.9 | "**Since** the tapes … are **infinite** in only one direction" | "**Desde** as fitas … são **infinitos** em apenas uma direção" | "Como as fitas … são infinitas em apenas uma direção" (*Since* causal ≠ "Desde") |
| D14-14 | GRAVE | §14.9 | "a Turing machine cannot properly carry out an instruction" | "um **Turing máquina** não consegue executar adequadamente uma instrução" | "uma máquina de Turing não consegue…" |
| D14-15 | GRAVE | §14.9 | "but we could define it so that it halts…" | "mas **poderíamos definimos** para que ele pare…" | "mas poderíamos defini-la para que ela pare…" |
| D14-16 | GRAVE | §14.9 | "we used **unary representation** … **This** requires two symbols" | "usamos **unário representação** … **Esse** requer dois símbolos" | "usamos representação unária … Isso requer dois símbolos" |
| D14-17 | MENOR | §14.9 | várias concordâncias | "de qual o nosso é apenas um"; "mais liberal do que **outros**"; "o **fita**"; "por um **função**"; "dizemos que **ele** para"; "**outros** definições"; "pode não ser exclusivamente **determinado**"; "**Esses** desempenham"; "de acordo com **todos eles**"; "fita que é **infinito**" | "…das quais a nossa é apenas uma"; "outras"; "a fita"; "uma função"; "ela para"; "outras"; "determinada"; "Estas"; "todas elas"; "infinita" |
| D14-18 | MENOR | §14.9 | "We have explained in section 14.6" | "Explicamos **em seção** 14.6" | "…na seção 14.6" (falta a contração; `\olref` já gera "seção 14.6") |
| D14-19 | MENOR | §14.9 | "what Turing machines can compute" | "o que **Máquinas** de Turing podem calcular" (maiúscula no meio da frase) | "…o que máquinas de Turing podem calcular" |
| D14-20 | MENOR† | §14.7 | "In section 14.6, we considered…" | "Na **seção seção** 14.6, consideramos…" | escrever "Na \olref[hal]{sec}" (o token já gera "seção 14.6") |

† D14-20: **herdado do EN** — o PDF EN também traz "In **section section** 14.6" (`cap-14-en.txt`, l. 576). A afirmação do audit antigo de que "§14.7 corrige o «section section» do original EN" está **incorreta**: o defeito persiste em ambos.

---

## Capítulo 15 — Indecidibilidade

**Fonte:** `turing-machines/undecidability/` · **PDF PT:** pp. 341–375

Retradução **muito boa**: narrativa completa (computabilidade → enumeração → parada → decisão → Trakhtenbrot), terminologia estável, provas legíveis. Poucos achados.

| ID | Sev | Local | EN | PT atual | Correção |
|----|-----|-------|----|----------|----------|
| D15-01 | GRAVE | §15.3 (`universal-tm.tex`) | "there is **a surjective function** from N to these descriptions. **Such a surjective function** can be obtained" | "há **a sobrejetora função** de N a essas descrições. **Tal a sobrejetora função** pode ser obtida" | "há uma função sobrejetora de N nessas descrições. Uma tal função sobrejetora pode ser obtida" (ordem inglesa + artigo, do token `!!a{surjective}`) |
| D15-02 | MENOR | §15.6, Def. 15.9 (3–4) | "A constant symbol 0"; "A one-place function symbol ′" | "**Uma** símbolo de constante 0"; "**Uma** símbolo de função de um lugar ′" | "Um símbolo de constante 0"; "Um símbolo de função de um lugar ′" (fonte: `Uma !!{constant}`/`Uma !!{function}` → gênero errado) |
| D15-03 | MENOR | §15.3, §15.9 | "In section 15.2 / In section 15.6" | "**Em seção** 15.2 discutimos…"; "**Em seção** 15.6 definimos…" (3×) | "Na seção 15.2…"; "Na seção 15.6…" |
| D15-04 | ESTILO | §15.1 | "can of course be used as input" | "pode **é claro** ser usada como entrada" | "pode, é claro, ser usada…" (vírgulas de aposto) |

---

## Apêndice A — Provas

**Fonte:** `methods/proofs/` · **PDF PT:** pp. 376–406

Tradução **muito boa** e fiel; a adaptação "feita em português" (§A.1) está correta. **Nenhum achado CRÍTICO/GRAVE de tradução.** Dois "erros" matemáticos aparentes são, na verdade, **herdados do EN** (ver Falsos positivos).

| ID | Sev | Local | EN | PT atual | Correção |
|----|-----|-------|----|----------|----------|
| DAP-A-01 | ESTILO | §A.2 | "at the bottom of a blank piece of paper" | "no **rodapé de uma folha** de papel em branco" | preferível "no fim/no pé da folha" |

---

## Apêndice B — Indução

**Fonte:** `methods/induction/` · **PDF PT:** pp. 407–422

Tradução **muito boa**; "termos bonitos"/"superbonitos" bem localizados; provas de indução (dados, termos bonitos) completas e corretas. **Nenhum achado CRÍTICO/GRAVE.**

| ID | Sev | Local | EN | PT atual | Correção |
|----|-----|-------|----|----------|----------|
| DAP-B-01 | ESTILO | §B.1 | "Very roughly, an inductive proof…" | "**De modo bem aproximado**, uma prova indutiva…" | "Grosso modo / De modo geral, uma prova indutiva…" |

---

## Apêndice C — Biografias

**Fonte:** `history/biographies/` (9 no SLC) · **PDF PT:** pp. 423–438

Prosa biográfica em geral natural, **mas há uma inconsistência dialetal grave**: metade das entradas está em **português europeu** e a outra metade em **português do Brasil**. Isto é visível ao leitor e destoa do resto do livro (todo em pt-BR). O audit antigo **não detectou** isto.

| ID | Sev | Local | EN / Referência | PT atual | Correção |
|----|-----|-------|-----------------|----------|----------|
| DAP-C-01 | GRAVE | §C.1, C.4, C.6, C.7, C.9 (Cantor, Gödel, Russell, Tarski, Zermelo) | livro alvo é pt-BR | Redação em **pt-PT**: datas "morreu **a** 6 de janeiro"; "**Polónia**", "**Prémio** Nobel", "**República Checa**", "aos **dezassete** anos", "zona de **fumadores**", "forçado a **reformar-se**", uso pesado de "o seu/a sua" | uniformizar para pt-BR: "morreu **em** 6…", "Polônia", "Prêmio", "República Tcheca", "dezessete", "área de fumantes", "aposentar-se" |
| DAP-C-02 | MENOR | §C.9 (Zermelo) | "University of Göttingen" | "Universidade de **Göttigen**" | "Göttingen" (falta o "n"; grafado certo em §C.4) |
| DAP-C-03 | MENOR | §C.8 (Turing) | "Benedict Cumberbatch and Keira Knightley" | "**Bendict** Cumberbatch e **Kiera** Knightley" | "Benedict"/"Keira" (provavelmente herdado do EN; verificar) |

**Contraste que confirma o split** (ambos no fonte `.tex`):
- `georg-cantor.tex`: "…que **os seus pais** eram desconhecidos"; "Cantor morreu **a** 6 de janeiro de 1918" → **pt-PT**.
- `alonzo-church.tex`: "iniciou **sua** formação universitária"; "Church faleceu **em** 1º de agosto de 1995" → **pt-BR**.
- Também pt-BR: Gentzen, Noether, Turing. Também pt-PT: Gödel, Russell, Tarski, Zermelo.

---

## Apêndice D — Alfabeto Grego (+ glossário/back-matter)

**Fonte:** `reference/greek-alphabet/` · **PDF PT:** pp. 439–457

Nomes das letras corretamente localizados (Alfa, Beta, Gama, Delta, Épsilon, …, Ômega; "Niu", "Xi", "Rô", "Qui", "Psi"). Glossário (pp. 440–446) consistente e em pt-BR, alinhado com `slc-config.sty`. **Nenhum achado.** As referências bibliográficas mantidas em inglês são corretas (falso positivo).

---

## Verificação do audit antigo (`comparacao-qualidade/caps-13-15-apendices.md`)

| Achado antigo | Estado atual |
|---------------|--------------|
| **CRÍTICO** `introduction.tex` §13.1 — prosa corrompida | **AINDA-PRESENTE** (inalterado; ver D13-01…D13-11) |
| **CRÍTICO** `beyond.tex` — editorial corrompido | **AINDA-PRESENTE no fonte**, mas **não renderiza no PDF SLC** (ver D13-30) |
| **GRAVE** `um !!a{domain}` → "um um domínio" | **AINDA-PRESENTE** (5×; ver D13-12) |
| **GRAVE** `variants.tex` §14.9 — inglês residual + nota de rodapé | **AINDA-PRESENTE e mais amplo** (ver D14-01…D14-16) |
| **MENOR** `other-logics.tex` §13.7 — calcos e "crie" | **AINDA-PRESENTE** (ver D13-19…D13-28) |
| **MENOR** `variants.tex` — frases truncadas, "Turing computável de acordo com" | **AINDA-PRESENTE** (ver D14-06…D14-17) |
| **ESTILO** "semântica pretendida" → "intencional" | **AINDA-PRESENTE** (ver D13-29) |
| Afirmação: "§14.7 **corrige** o «section section» do EN" | **INCORRETA** — PT tem "Na seção seção 14.6"; o EN também (bug herdado). **AINDA-PRESENTE** (D14-20) |
| Cap. 15 / Ap. A / Ap. B / Ap. C: "Nenhum achado CRÍTICO ou GRAVE" | **PARCIALMENTE INCORRETO** — há GRAVE novo em §15.3 (D15-01) e GRAVE novo no Ap. C (dialeto misto pt-PT/pt-BR, DAP-C-01) |
| FALSO_POSITIVO "k +1 / a tem" (Ap. B) | **CONFIRMADO** falso positivo (é "também k+1 a tem", correto) |

---

## Falsos positivos (não contar como erro)

- **Ap. A — matemática "errada" que é herdada do EN (tradução fiel):**
  - Prop. A.11: "há algum x ∈A que está **∉C**" — o EN também diz "…is ∉C" (deveria ser ∉A∪B). Bug do original.
  - Lei da absorção (§A.8, prova explícita): "(a) A∩(A∪B) ⊆A e **(b) A∩(A∪B) ⊆A**" — o EN repete idêntico "(b) A∩(A∪B) ⊆A" (deveria ser A ⊆ A∩(A∪B)). Bug do original.
- **Ap. C / Ap. D — citações mantidas em inglês (corretas):** títulos de livros/artigos (*How to Prove It*, *Book of Proof*, *Principia Mathematica*, *On Denoting*, *Investigations in the Calculus of Variations*…), programas/filmes/podcasts (*A Brief History of Mathematics*, *Breaking the Code*, *The Imitation Game*, *Radiolab*, *Stuff You Missed in History Class*), periódicos (*Journal of Symbolic Logic*), instituições (*Institute for Advanced Study*, *Perimeter Institute*, *McMaster University*), nomes de código/máquinas (*Enigma*, *Colossus*, *bombe*, *Lorenz*), termos alemães (*Entscheidungsproblem*), e toda a Bibliografia. Também as pronúncias herdadas ("gay-org kahn-tor", "ger-dle", "ner-ter").
- **Cross-refs "PROBLEMA 4.7 / 14.12" em versalete/caixa-alta:** formatação de `\olref` para problemas (o EN usa "problem 4.7" em caixa baixa); artefato de renderização/extração, não erro de tradução.
- **Símbolo `M`/`𝔐` (Lema 15.20):** a extração não distingue a máquina M da estrutura 𝔐; não é erro.

---

## Síntese

- **Cap. 13** e **§14.9** são os únicos pontos realmente problemáticos do bloco e continuam **essencialmente como no audit antigo**: §13.1 (`introduction.tex`) e o editorial nunca foram retraduzidos; §13.7 (`other-logics.tex`) e §14.9 (`variants.tex`) mantêm inglês residual, tokens compostos quebrados (`estruturaar`, `fórmulada`) e frases meio-traduzidas. Recomendação: **retraduzir §13.1, §13.7 e §14.9 a partir do EN** (não remendar) e varrer `beyond/` para `um`/`uma` antes de `!!a{…}`.
- **Cap. 14 (exceto §14.9)**, **Cap. 15**, **Ap. A**, **Ap. B**, **Ap. D**: qualidade **boa a muito boa**, publicáveis com correção fina.
- **Ap. C**: exige **uniformização dialetal** — 5 das 9 biografias estão em português europeu (parecem ter vindo de outra fonte/tradutor).
- Achado matemático dos apêndices (∉C, absorção) é **herdado do EN** — não é defeito de tradução.

**Nota do bloco: 3/5.**
