# Auditoria de qualidade EN→PT (SLC) — Bloco Caps. 9–12

**Livro:** OpenLogic — *Sets, Logic, and Computation* (SLC)
**Bloco:** Cap. 9 (Sistemas de Derivação) · Cap. 10 (O Cálculo de Sequentes) · Cap. 11 (Dedução Natural) · Cap. 12 (O Teorema da Completude)
**Data:** 2026-07-10
**Tipo:** Auditoria (apenas análise — **nenhum** arquivo-fonte `.tex`/`.sty` foi modificado)

**Método:** Primário = texto PT do PDF (`verificacao/comparacao-pdf/cap-{09..12}-pt.txt`), comparado semanticamente com o EN (`…-en.txt`). Comparação por seção, não linha-a-linha. A fonte LaTeX PT (`OpenLogic/locale/pt/content/first-order-logic/{proof-systems,sequent-calculus,natural-deduction,completeness}/`) e o glossário `OpenLogic/locale/pt/open-logic-config.sty` foram consultados para confirmar cada achado e apurar a causa-raiz. Atenção especial a: regras de inferência, rótulos de *prooftrees*, condição de variável própria, descarga de hipóteses.

**Severidades:** CRÍTICO (inglês residual visível / erro semântico grave / bloqueio de leitura) · GRAVE (mistradução, agramaticalidade forte, inconsistência de termo-chave) · MENOR (concordância, artefato de token, lapso pontual) · ESTILO (calque, preferência terminológica).

> **Aviso de sincronismo PDF ↔ fonte.** A fonte LaTeX PT foi **migrada muito recentemente** (`locale/pt`, timestamp 10/07/2026). A grande maioria dos achados do PDF foi **confirmada na fonte atual** (marcados abaixo). Poucos artefatos de token podem já ter outra forma na compilação corrente — ver `C10-03`. Recomenda-se **recompilar** antes do fechamento e reverificar os itens assinalados «(fonte pode diferir)».

---

## Síntese executiva

| Cap. | Título | Nota | C / G / M / E |
|------|--------|------|---------------|
| 9  | Sistemas de Derivação | **3,5 / 5** | 1 / 0 / 3 / 0 |
| 10 | O Cálculo de Sequentes | **3,8 / 5** | 0 / 1 / 3 / 1 |
| 11 | Dedução Natural | **2,5 / 5** | 1 / 2 / 6 / 1 |
| 12 | O Teorema da Completude | **3,5 / 5** | 0 / 1 / 2 / 1 |
| **Total** | | | **2 / 4 / 14 / 3** |

**Veredicto.** A integridade formal continua exemplar: *prooftrees*, regras LK/ND, sequentes iniciais, condição de variável própria e a estrutura das provas do cap. 12 estão **preservados**. Os problemas são de **prosa e de tokens**, não de matemática. Dois eixos dominam o bloco:

1. **§11.9 (Dedução Natural, `provability-propositional.tex`) permanece essencialmente em inglês** — título, enunciados e provas. É o mesmo achado CRÍTICO do audit antigo e continua **por resolver**. O homólogo do cap. 10 (`sequent-calculus/provability-propositional.tex`) **está traduzido**, o que torna o contraste gritante.
2. **Dois defeitos sistemáticos de token no glossário `open-logic-config.sty`** produzem agramaticalidades visíveis: `\settexttoken{derive}{deriva}{deriva}` (sem infinitivo → «podemos deriva», «para deriva», «não pode deriva») em toda a cadeia caps. 9–11; e `\settexttoken{complete}{completo}{completos}` + o mecanismo de artigo `!!a{…}` (→ «a completo conjunto consistente», «teoria que é completo») em todo o cap. 12.

**Correção do audit antigo:** o «token derive ausente do config» e o «signed formula em inglês» **foram resolvidos** (o inglês desapareceu). Mas o cap. 12, elogiado como **«padrão ouro»**, **não é impecável**: tem um defeito GRAVE **recorrente** de artigo/gênero («a completo conjunto») que o scan antigo (focado em inglês residual e tokens corrompidos) não detectou.

---

## Causa-raiz transversal (glossário `open-logic-config.sty`)

Três entradas do glossário PT explicam a maioria dos achados GRAVE/MENOR (todas confirmadas no arquivo):

| Linha | Definição atual | Efeito no PDF | Correção |
|-------|-----------------|---------------|----------|
| `\settexttoken{derive}{deriva}{deriva}` (L33) e `{prove}{deriva}{deriva}` (L38) | Forma **invariável** «deriva»; sem infinitivo | «podemos **deriva**», «para **deriva**», «não pode **deriva** coisas», «como **deriva** uma contradição» | O token OLP `!!{…}` não gera infinitivo; a prosa-fonte deve usar **«derivar»** em texto simples nesses contextos (ou criar token dedicado) |
| `\settexttoken{complete}{completo}{completos}` (L45) | Só **masculino**; `!!a{complete}` insere artigo inglês | «teoria que é **completo**» (deveria *completa*); «**a completo** conjunto consistente» | Adicionar flexão feminina e/ou reescrever o fonte para «**um** conjunto consistente **completo**» (nome antes do adjetivo, artigo `um`) |
| `\settexttoken{discharge}{descarrega}{descarregam}` (L51); `discharged`→`descarregada`/`descarregadas` (L52); `undischarged`→`não descarregada` (L53) | Verbo sem infinitivo; particípio só flexiona se marcado plural | «nos permite **descarrega**»; «hipóteses … **descarregada**» (deveria *descarregadas*) | Usar infinitivo em texto simples; marcar o plural (`!!^{discharged}`/plural) após substantivo plural |

**Resolvidos** face ao audit antigo: `\settexttoken{signed formula}{fórmula assinada}{…}` (L44) existe → o inglês «signed formula» **desapareceu**; o token `derive` está agora **definido** (já não vaza «derive/derives/deriveda»).

Além do glossário, o rótulo `\TAss` (justificação de hipótese em tableaux) **não foi localizado** e imprime «Assumption».

---

## Capítulo 9 — Sistemas de Derivação

**Fontes:** PDF pp. 181–190 (PT) / 173–182 (EN); LaTeX `proof-systems/{introduction,sequent-calculus,natural-deduction,tableaux,axiomatic-deduction}.tex`.

A prosa dos panoramas (§9.1 introdução, §9.2 sequentes, §9.3 ND, §9.5 axiomática) está **bem traduzida**; correção/completude, consistência/satisfatibilidade e os exemplos de derivação (⊢(A∧B)→A em cada sistema) estão corretos. Os defeitos concentram-se no panorama de **§9.4 (tableaux)**.

| ID | Sev | Local | EN (referência) | PT atual | Correção sugerida |
|----|-----|-------|-----------------|----------|-------------------|
| C09-01 | **CRÍTICO** | §9.4 Tableaux, *prooftree* exemplo (PDF p.188; `tableaux.tex` L54, macro `\TAss`) | rótulo «Assumption» | Rótulo **«Assumption»** impresso em inglês no tableau fechado (linha 1), enquanto o texto usa «hipóteses» | Localizar `\TAss` para **«Hipótese»** (ou «Suposição»); confirmado no fonte (`just = \TAss`) |
| C09-02 | MENOR | §9.4 (PDF p.187: «Uma Uma fórmula assinada»; «Um Um tableau», p.187/188) | "A signed formula is…"; "A tableau consists…" | Artigo **duplicado**: «**Uma Uma** fórmula assinada», «**Um Um** tableau» | O fonte tem «Uma `!!^a{signed formula}`» / «Um `!!^a{tableau}`» — o token `!!^a{}` já gera o artigo; remover o «Uma»/«Um» manual (`tableaux.tex` L17, L22, L40) |
| C09-03 | MENOR | §9.3 ND, panorama (PDF p.186) | "some of the rules of inference may **discharge** them" | «algumas das regras de inferência podem **"descarrega"**-las» | «podem **descarregá-las**» — token `discharge` sem infinitivo (ver causa-raiz) |
| C09-04 | MENOR | §9.3 ND, panorama (PDF p.185–186) | "assumptions that remain **undischarged**"; "all assumptions are **discharged**" | «hipóteses que permanecem **não descarregada**»; «todas as hipóteses são **descarregada**» | «não **descarregadas**» / «**descarregadas**» (concordância de número — token singular após plural) |

### Nota: **3,5 / 5**
Panoramas sólidos e exemplos corretos. O único item pesado (`C09-01`) é **inglês visível**, mas está confinado ao rótulo de um tableau (sistema lateral do panorama). Os demais são artefatos de token de baixo impacto de leitura. Observação positiva: o antigo «**deriveda**» (introdução/sequentes/ND) **desapareceu** — o PDF agora traz «pode ser **derivada**» corretamente.

---

## Capítulo 10 — O Cálculo de Sequentes

**Fontes:** PDF pp. 191–223 (PT) / 183–214 (EN); LaTeX `sequent-calculus/*.tex`.

Tradução **consistente e completa**: definições (sequente, sequente inicial, LK-derivação), regras proposicionais/de quantificadores/estruturais, os exemplos passo a passo (§10.5–10.7), a prova de correção por indução (§10.12) e identidade (§10.13–10.14) espelham fielmente o EN. Rótulos de regra (¬L, ∧R, →L, ∀R, WR, Cut), o símbolo ⇒ e a condição de **variável própria** (*eigenvariable*) estão corretos. Os defeitos vêm todos do token `derive`/`derivable`.

| ID | Sev | Local | EN (referência) | PT atual | Correção sugerida |
|----|-----|-------|-----------------|----------|-------------------|
| C10-01 | **GRAVE** | §10.9 (provas Prop. 10.18/10.21) e §10.12 Correção (PDF pp.207–208, 211) | "We can then **derive**"; "sound if it cannot **derive** things" | «Podemos então **deriva**»; «é correto se não pode **deriva** coisas que de fato não valem» | «Podemos então **derivar**»; «não pode **derivar** coisas» — token `derive` sem infinitivo (agramaticalidade recorrente) |
| C10-02 | MENOR | §10.10 (Prop. 10.22, 10.24) e §10.12 (PDF pp.209, 210, 211) | "are **derivable**"; "semantic properties of **derivable** sequents" | «são **derivável**»; «propriedades semânticas dos sequentes **derivável**» | «são **deriváveis**»; «sequentes **deriváveis**» — usar plural do token `derivable` |
| C10-03 | MENOR | Def. 10.11, Def. 10.12, Prop. 10.17(2), Teo. 10.28 (PDF pp.204–205, 206, 211) | "such that LK **derives** …" | «tal que **LK derivam** …» (LK é singular) | «**LK deriva**». *(Fonte pode diferir: o fonte usa `\Log{LK} !!{derive}s` e o config define `derive→deriva` singular; o «derivam» do PDF pode ser artefato de compilação anterior — reverificar após recompilar.)* |
| C10-04 | MENOR | §10.5 Derivações (PDF p.196; `sequent-calculus/derivations.tex` L18) | "Derivations … are inductively **generated**" | «Derivações … são **gerados** indutivamente» | «são **geradas**» (concordância de gênero; *derivações* é feminino) — confirmado no fonte |
| C10-05 | ESTILO | Def. 10.3 (título) vs. corpo (PDF p.196) | "(LK derivation)" | título «(**LK derivação**)» sem hífen vs. corpo «**LK-derivação**» | Uniformizar «**LK-derivação**» |

### Nota: **3,8 / 5**
Excelente em conteúdo, terminologia e árvores de prova. A nota é limitada quase só pelo token `derive` (infinitivo/concordância), que reincide ao longo das provas mas não altera o sentido matemático. Título «Noções da Teoria da Prova» (§10.8) correto (ver inconsistência com o cap. 11 em `C11-09`).

---

## Capítulo 11 — Dedução Natural

**Fontes:** PDF pp. 224–257 (PT) / 215–248 (EN); LaTeX `natural-deduction/*.tex`.

Regras Intro/Elim (∧, ∨, →, ¬, ⊥), descarga `[A]ⁿ`, condição de variável própria e os exemplos das §§11.5–11.6 e §§11.12–11.13 estão **estruturalmente corretos e bem traduzidos**. O capítulo é, porém, o **mais irregular do bloco** por causa de §11.9.

| ID | Sev | Local | EN (referência) | PT atual | Correção sugerida |
|----|-----|-------|-----------------|----------|-------------------|
| C11-01 | **CRÍTICO** | **§11.9 «Derivabilidade e os Conectivos Proposicionais»** (`provability-propositional.tex`, PDF pp.243–244) | título "Derivability and the Propositional Connectives"; "Both A∧B ⊢A **and** A∧B ⊢B"; "…**is inconsistent**"; "**We can** derive both"; "**Consider the following** derivation"; "This **is** a derivation of ⊥ **from** undischarged **assumptions** A∨B, ¬A, **and** ¬B"; "This **is shown by the following two** derivations"; "**Note that** →Intro **may, but does not have to**, discharge **the assumption** A" | Seção **quase inteiramente em inglês**: título «Derivabilidade **and the Propositional Connectives**»; enunciados «**Both** … **and** …», «… **is inconsistent**»; provas «**We can** deriva», «**Consider the following** derivação», «This **is** uma derivação **of** ⊥ **from** não descarregada **assumptions** … **and** ¬B», «This **is shown by the following two** derivações», «**Note that** →Intro **may, but does not have to,** descarrega **the assumption** A» | **Traduzir a seção inteira**, usando `sequent-calculus/provability-propositional.tex` (**já traduzido**) como molde. Confirmado no fonte: `\olsection{\usetoken{S}{derivability} and the Propositional Connectives}` e todo o corpo em inglês |
| C11-02 | **GRAVE** | §11.9, frase de abertura (PDF p.243; `provability-propositional.tex` L18–19) | "the derivability relation ⊢ **of natural deduction** is strong enough" | «a relação **derivabilidade** ⊢ **da natureza a dedução** é forte o suficiente» | «a relação **de derivabilidade** ⊢ **da dedução natural** é forte…» — mistradução/*garbled* de "of natural deduction" |
| C11-03 | **GRAVE** | §§11.5, 11.6, 11.9, 11.12 (PDF pp.231, 233–234, 238, 252) | "we want to **derive** A→B"; "to **derive** B"; "we want to **derive** A∨¬A"; "**derive** the intermediary conclusion" | «queremos **deriva** A→B»; «para **deriva** B»; «queiramos **deriva** A∨¬A … tentar **deriva** … exigiria que **deriva** A ou ¬A»; «usamos ∃Elim para **deriva**» | «**derivar**» em todos — token `derive` sem infinitivo, agora em **seções traduzidas** (agramaticalidade recorrente) |
| C11-04 | MENOR | §11.4 Ex. 11.3 (PDF p.229) | "allows us to **discharge** any assumption" | «nos permite **descarrega** qualquer hipótese» | «nos permite **descarregar**» (token `discharge` sem infinitivo) |
| C11-05 | MENOR | §11.1, Def. 11.10, Ex. 11.4, provas 11.13–11.21 (PDF pp.224–225, 229–230, 240–243) | "are **discharged**"; "**undischarged** assumptions"; "all assumptions have been **discharged**" | «hipóteses são **descarregada**»; «hipóteses não **descarregada**»; «suposições foram **descarregada**» | «**descarregadas**» / «não **descarregadas**» (concordância de número, pervasiva; `rules-and-proofs.tex` L19 confirma o token singular) |
| C11-06 | MENOR | §11.6 Ex. 11.7 e Ex. 11.9 (PDF pp.235, 238; `proving-things-quant.tex` L36, L193) | "setting up **the derivation**"; "the last line of **the derivation**" | «montando **o derivação**»; «A última linha **do derivação**» | «**a** derivação» / «**da** derivação» (gênero; *derivação* é feminino) — confirmado no fonte |
| C11-07 | MENOR | §11.4 Derivações (PDF p.228; `natural-deduction/derivations.tex` L17) | "Derivations … are inductively **generated**" | «Derivações … são **gerados** indutivamente» | «são **geradas**» (gênero) — confirmado no fonte (cf. `introduction/formulas.tex` que usa «geradas» corretamente) |
| C11-08 | MENOR | §11.12 Ex. 11.31 (PDF p.252) | "**We derive** the sentence" | «Exemplo 11.31. **derivamos** a sentença» | «**Derivamos**» (maiúscula em início de frase) |
| C11-09 | ESTILO | §11.7 título e prosa (PDF pp.239–240) | "Proof-Theoretic Notions" | «Noções **Prova-Teóricas**»; «noções **prova-teóricas**»; «propriedade **prova-teórica**» | Calque de "proof-theoretic"; **inconsistente** com «Noções **da Teoria da Prova**» dos caps. 10 (§10.8) e 12 (§12.1). Uniformizar |
| C11-10 | MENOR | §11.5 Ex. 11.5 (PDF p.231) | "the main operator of the sentence in the **end-sequent**" | «operador principal da sentença no **end-sequent**» | Resíduo inglês (o EN **também** usa "end-sequent" — termo herdado e impróprio em DN); traduzir por «na **conclusão**» ou «no **sequente final**» |

### Nota: **2,5 / 5**
As §§11.1–11.8 e 11.10–11.13 estão em bom nível; mas §11.9 imprime uma seção inteira em inglês num ponto **pré-requisito da completude** (é citada em `complete-consistent-sets.tex`), e os tokens `derive`/`discharge` reincidem em prosa já traduzida. É o capítulo que mais puxa o bloco para baixo.

---

## Capítulo 12 — O Teorema da Completude

**Fontes:** PDF pp. 258–286 (PT) / 249–275 (EN); LaTeX `completeness/*.tex`.

A prosa filosófica (Hilbert/Frege), o esboço da prova, Henkin, Lindenbaum, o modelo de termos, identidade/fatoração, o teorema principal, compacidade e Löwenheim–Skolem estão **fiéis e sem inglês residual** — a estrutura das provas (`\begin{proof}`, ramos `\iftag{FOL}`) está intacta. **Contudo, o cap. NÃO é o «padrão ouro» impecável do audit antigo:** há um defeito GRAVE **recorrente** de artigo/gênero que o scan anterior não pegou.

| ID | Sev | Local | EN (referência) | PT atual | Correção sugerida |
|----|-----|-------|-----------------|----------|-------------------|
| C12-01 | **GRAVE** | §12.3 (×4), §12.4 Prop. 12.3, §12.5 Lema 12.8, §12.6 Def. 12.9 (PDF pp.263, 264, 266, 268–269; `complete-consistent-sets.tex` L36–40) | "a **complete consistent set**"; "extended to a **complete and consistent set**"; "a **countably infinite set** of new constant symbols" | «**a completo** conjunto consistente» (recorrente); «pode ser estendido a **a completo** conjunto consistente» (dupla preposição «a a»); «adicionando-se **a infinito contável** conjunto de novos símbolos» | «**um conjunto consistente completo**» / «estendido a **um** conjunto…» / «**um conjunto** infinito contável» — o mecanismo `!!a{complete}`/`!!^a{complete}` insere artigo errado e mantém a ordem inglesa (adjetivo antes do nome). Confirmado no fonte |
| C12-02 | MENOR | §12.3 (PDF p.264; `complete-consistent-sets.tex` L29) | "A theory which is **complete** and axiomatizable" | «Uma teoria que é **completo** e axiomatizável» | «que é **completa**» (gênero; token `complete` só tem forma masculina) |
| C12-03 | MENOR | §12.1 e §12.11 Ex. 12.34 (PDF pp.259–260, 284) | "a finite or **countably infinite** model"; "models … themselves are **countable**" | «um modelo finito ou **infinitos contáveis**»; «modelos … mas que eles mesmos são **contável**» | «infinito **contável**» (singular); «são **contáveis**» (plural) — concordância de número |
| C12-04 | ESTILO | §12.3 (PDF p.263; `complete-consistent-sets.tex` L26, L34) | "**Complete** sets of sentences…"; "**Complete consistent** sets are important" | «**Completos** conjuntos de sentenças»; «**Completos** conjuntos consistentes» | Ordem adjetiva calcada do inglês; **inconsistente** com «conjuntos **completos**» usado logo adiante (L28). Preferir nome antes do adjetivo |

### Nota: **3,5 / 5**
Terminologia estável e exemplar (completude, compacidade, maximamente consistente, expansão de Henkin, lema de Lindenbaum, modelo de termos, fatoração) e prova longa intacta. A nota **desce** por causa de `C12-01`: a expressão «a completo conjunto consistente» aparece **6+ vezes** em posições-chave (definições e lemas), é agramatical e reincidente. Corrigir o token `complete`/`!!a{}` recupera o capítulo ao nível de publicação.

---

## Verificação do audit antigo (`relatorios/comparacao-qualidade/caps-09-12.md`)

| Achado antigo | Estado atual | Observação |
|---------------|--------------|------------|
| **9.1-1 / 9.2-1 / 9.3-1** «deriveda» (inglês) | **RESOLVIDO** | PDF agora traz «pode ser **derivada**»; token `derive` definido no config |
| **9.4-1** «signed formula» em inglês | **RESOLVIDO** | `\settexttoken{signed formula}{fórmula assinada}` presente; PDF traz «fórmula assinada» |
| **9.4-2** «Uma A signed formula» | **PARCIAL** | «signed formula» traduzido, mas o artigo duplicado persiste → «**Uma Uma** fórmula assinada» (`C09-02`) |
| **9.4-3** «Um Um tableau» | **AINDA PRESENTE** | `C09-02` |
| **9.4-4** rótulo «Assumption» | **AINDA PRESENTE** | `\TAss` não localizado (`C09-01`) — agora CRÍTICO pela grade SLC (inglês visível) |
| **9.3-2 / 11-4** concordância «descarregada» | **AINDA PRESENTE** | `C09-04`, `C11-05` |
| **10-1 / X-1** vazamento do token `derive` | **PARCIAL** | Inglês **resolvido**; surge agora agramaticalidade de **inflexão** («deriva» sem infinitivo, «são derivável», «LK derivam») → `C10-01/02/03`, `C11-03` |
| **11-1** `provability-propositional.tex` (ND) não traduzida | **AINDA PRESENTE (crítico)** | `C11-01`/`C11-02` — confirmado no fonte; é o pior achado do bloco. *(Nota: a seção é a §11.9, não «§11.20» como no audit antigo)* |
| **11-3** «outros sequentes» em DN | **RECLASSIFICADO → falso positivo de tradução** | Presente (`rules-and-proofs.tex` L33), **mas o EN também diz "other sequents"**; é bug herdado do original, não defeito de tradução (ver Falsos positivos) |
| **10-2 / 10-3 / 11-6 / 12-2** («Note que», «modus ponens», nomes de regra, símbolos) | **FALSOS POSITIVOS confirmados** | Corretos/intencionais |
| **12-1** «fórmulas adicionais adicionais» | **RESOLVIDO** | PDF traz «adicionamos fórmulas adicionais» (aceitável; sem duplicação) |
| **cap. 12 «padrão ouro»** | **REVISTO → parcialmente verdadeiro** | Sem inglês residual e estrutura intacta (verdadeiro), **mas** há defeito GRAVE de artigo/gênero não detectado pelo scan antigo (`C12-01/02/03`) |

---

## Falsos positivos (não corrigir como erro de tradução)

- **«outros sequentes» em Dedução Natural** (`rules-and-proofs.tex` L33): o **EN original também diz "other sequents"** (herança do template do cálculo de sequentes). A tradução é **fiel**; a impropriedade é *upstream*. Alterar para «sentenças» divergiria do fonte — reportar ao projeto OLP, não tratar como erro PT.
- **«Teoremas 10.25 e 11.25 se aplica»** (Lema 12.6, PDF p.266): espelha o EN "Theorems 10.25 and 11.25 **applies**" (concordância errada **no original**). Fiel.
- **«compatibilidade entre sentenças»** (Resumos caps. 10 e 11): traduz exatamente "compatibility between sentences" do EN (redação incomum, mas do original).
- **«𝛱\ 𝛬»** na prova de correção (caso do corte, §10.12): artefato de extração do PDF do símbolo ⇒ — presente **também** no EN; não é erro.
- **«∧elim» minúsculo** (Ex. 11.4): o EN também escreve "∧elim" minúsculo nesse ponto; fiel.
- **Nomes de regra / siglas** (¬L, ∧R, →Intro, ∀Elim, LK, Cut, WR) e **«variável própria»** (para *eigenvariable*): convenção OLP correta.
- **Títulos «Identidade» / «Correção com Identidade»** (§§10.13–14, 11.12–13): omissão de "predicate" do EN "Identity predicate" é aceitável e mais idiomática.

---

## Mini-síntese e recomendações prioritárias

O bloco 9–12 mantém **integridade matemática exemplar** (árvores, regras, sequentes, provas). A qualidade de leitura, porém, é **puxada por duas causas mecânicas e uma lacuna**:

1. **[CRÍTICO] Traduzir `natural-deduction/provability-propositional.tex`** (§11.9) — usar o homólogo já traduzido do cálculo de sequentes como molde. Corrige `C11-01` e `C11-02`.
2. **[GRAVE] Corrigir o token `complete`/`!!a{}`** no cap. 12 — flexão feminina + reescrever «a completo conjunto» → «um conjunto … completo». Corrige `C12-01/02` e devolve o capítulo ao nível de publicação.
3. **[GRAVE] Resolver o token `derive`/`prove`/`discharge` sem infinitivo** — reescrever a prosa-fonte para usar «derivar/descarregar» em texto simples onde o token gera formas finitas. Corrige `C10-01`, `C11-03/04` (transversal).
4. **[CRÍTICO local] Localizar `\TAss`** → «Hipótese» no tableau (`C09-01`).
5. **[MENOR, sistemático] Concordâncias**: «descarregada→descarregadas», «gerados→geradas», «o/do derivação→a/da derivação», «são derivável→deriváveis». Rever uso singular/plural dos tokens.
6. **[Processo] Recompilar o PDF** (a fonte foi migrada depois da extração auditada) e reverificar os itens «(fonte pode diferir)», sobretudo `C10-03`.

**Contagem total do bloco:** **2 CRÍTICO · 4 GRAVE · 14 MENOR · 3 ESTILO** (23 achados).

*Auditoria manual EN↔PT sobre `verificacao/comparacao-pdf/` + fonte `OpenLogic/locale/pt/…` e `open-logic-config.sty`. Nenhum arquivo-fonte foi modificado.*
