# Auditoria de qualidade EN→PT (pt-BR) — SLC · Prefácio + Caps. 1–4

**Bloco:** Prefácio (Cap. 0) + Cap. 1 Conjuntos · Cap. 2 Relações · Cap. 3 Funções · Cap. 4 O Tamanho dos Conjuntos
**Data:** 2026-07-10
**Auditor:** revisão manual parágrafo-a-parágrafo (não é diff automático).

**Fontes consultadas**
- **PDF PT (primário — o que o leitor vê):** `verificacao/comparacao-pdf/cap-0[0-4]-pt.txt`
- **PDF EN (referência):** `verificacao/comparacao-pdf/cap-0[0-4]-en.txt`
- **Fonte LaTeX PT:** `C:\Users\Pedro\Desktop\OpenLogic\locale\pt\content\sets-functions-relations\{sets,relations,functions,size-of-sets}\*.tex`; prefácio e resumos em `…\locale\pt\courses\sets-logic-computation-pt\include\{preface.tex,summary-1..4.tex}`; tokens em `…\slc-config.sty`
- **Fonte LaTeX EN:** `OpenLogic-original/content/sets-functions-relations/…`
- **Audit antigo:** `relatorios/comparacao-qualidade/caps-00-04.md`

**Severidades:** CRÍTICO (sentido/matemática errada, ref quebrada, token corrompido) · GRAVE (inglês visível, omissão, terminologia errada/inconsistente) · MENOR (typo, concordância, calco) · ESTILO (preferência/registo).

---

## Síntese executiva

| Cap. | Título | Nota | C / G / M / E |
|------|--------|------|---------------|
| 0 | Prefácio | **4,6 / 5** | 0 / 0 / 2 / 0 |
| 1 | Conjuntos | **4,0 / 5** | 0 / 1 / 3 / 1 |
| 2 | Relações | **3,7 / 5** | 0 / 3 / 6 / 1 |
| 3 | Funções | **4,1 / 5** | 0 / 1 / 4 / 1 |
| 4 | O Tamanho dos Conjuntos | **2,9 / 5** | 0 / 7 / 9 / 1 |
| **Bloco** | — | — | **0 / 12 / 24 / 4** |

**Veredicto.** O bloco **não tem nenhum erro CRÍTICO** — a matemática está fiel, não há token cru `!!{...}` visível, e o único CRÍTICO do audit antigo (`{as}`→“considerada as”) foi **corrigido** (`basics.tex` L12 = “considerada **como**”). O Prefácio e o Cap. 3 melhoraram muito (o Cap. 3 resolveu **todos** os problemas de `surjection/injection/bijection` em inglês e a ordem `sobrejetora função`). **Porém o Cap. 4 regrediu para o pior do bloco**: as correções aplicadas ao Cap. 3 (`functions/`) **não foram propagadas** ao Cap. 4 (`size-of-sets/`), pelo que **C4-02, C4-03, C4-04 e C4-05 continuam AINDA-PRESENTES**, somando-se a novas inconsistências (`array` em inglês, `equipotência`↔`equinumeroso`, `pareamento`↔`emparelhamento`).

**Problemas sistémicos (atravessam o bloco):**
1. **`O.s.` por “i.e.”** — abreviatura artificial (tentativa de “ou seja”), maiúscula a meio de frase, digitada à mão em dezenas de ficheiros; convive com **“isto é”** noutros ficheiros → inconsistente e com aspeto de erro.
2. **Ordem adjetivo–substantivo** `sobrejetora função` / `injetora função` (deve ser `função sobrejetora`) — corrigido no Cap. 3, **persiste no Cap. 4**.
3. **Concordância de número** dos tokens `contável`/`incontável` (“conjuntos contável”, “são contável”).
4. **Registo europeu vs. brasileiro** — corpo dos capítulos com forte sabor pt-PT (ênclise, “os seus”, “partilham”, “se e só se”, “nalgum”, “pormenor”, “empregado de mesa”) vs. **Resumos** claramente pt-BR (“compartilham”, “são chamados de”, “bijeção”). Alvo declarado = pt-BR.
5. **Referências cruzadas sem artigo/contração**: “**em** Proposição 2.25”, “**de** seção 1.5”, “**por** Proposição 3.19” (deviam ser “**na** Proposição”, “**da** seção”, “**pela** Proposição”).
6. **Abreviaturas não unificadas**: `sse` vs `se e só se` (ambas para “iff”); `p.ex.` vs `por exemplo` vs `e.g.` (esta última em latim/inglês).

---

## Capítulo 0 — Prefácio

**Fontes:** PDF PT pp. 14–22; `include/preface.tex`. Tradução madura e fiel; problemas mínimos.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----|-------------------|
| A00-01 | MENOR | `preface.tex` L4 / PDF p.14 | “Metalogic” (título/termo) | «**Metalogica**» é assim chamada | Falta acento: «**Metalógica**». (O token `metalogic` em `slc-config.sty` L342 tem o mesmo erro: `{metalogica}` → deveria ser `{metalógica}`.) |
| A00-02 | MENOR | PDF p.14 (§Prefácio) | “topics such as how to give precise meaning” | “tópicos **como como** dar significado preciso” | Duplicação de “como” (soa a erro). Reformular: “tópicos **como o de** dar significado preciso…” ou “tópicos **tais como**: como dar…”. |

**Verificação do audit antigo (Cap. 0):** C0-01 (Part I/II/III), C0-02 (`derivable`), C0-03 (banner “PART I”) → **todos RESOLVIDOS** (PDF: “A **parte I** trata…”, “é também **derivável**”, banner “**PARTE I**”).

### Mini-síntese — **4,6 / 5**
Melhor texto do bloco; prosa académica fiel; toda a infraestrutura de “partes” e o token `derivable` do audit antigo foram corrigidos. Só resta um acento e um “como como”.

---

## Capítulo 1 — Conjuntos

**Fontes:** PDF PT pp. 23–38; `sets/*.tex`, `include/summary-1.tex`.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----|-------------------|
| A01-01 | **GRAVE** | vários `sets/*.tex` (`unions-and-intersections`×6, `pairs-and-products`×2, `russells-paradox`×2, `basics` L97, `important-sets`×1) / PDF §1.3–§1.6, Probl. 1.1 | “i.e.” | “**O.s.**,” (p.ex. “É menos óbvio que Q⊊R, **O.s.**, que há…”, “ele é **um um** elemento…”→ §1.4; “Paradoxo de Russell, **O.s.**, que evite…”) | Abreviatura artificial. Trocar por “**isto é**” (ou “ou seja” por extenso). O próprio ficheiro `basics.tex` usa “isto é” (L74) e “O.s.” (L97) — unificar. |
| A01-02 | MENOR | `pairs-and-products.tex` / PDF §1.5 (p.32) | “Having fixed a definition” | “**Tendo fixada** uma definição de par ordenado” | Concordância: “**Tendo fixado** uma definição…” ou “**Fixada** uma definição…”. |
| A01-03 | MENOR | `important-sets.tex` / PDF §1.3 (p.27) | “infinitely many elements” | “cada um tem **infinitamente muitos** elementos” | Calco de “infinitely many”. Preferir “**infinitos** elementos” / “uma **infinidade de** elementos”. |
| A01-04 | ESTILO | prosa geral do capítulo | — | ênclise + “**os seus** elementos”, “**partilham**”, “**se e só se**” (corpo) vs. Resumo “**compartilham**”, “**seus** elementos” | Registo pt-PT no corpo vs. pt-BR no Resumo. Alinhar ao pt-BR. |
| A01-05 | MENOR | `include/summary-1.tex` / PDF Resumo (p.36) | “every element of **X** … **Y**” | “todo elemento de **X** é um elemento de **Y**” | Idealmente “**A** … **B**”. **Nota:** o EN original também usa X/Y (fidelidade, não erro de tradução); corrigir a montante se se quiser clareza. |

**Verificação do audit antigo (Cap. 1):**
- C1-01 (`{as}`→como) — **RESOLVIDO** (`basics.tex` L12: “considerada **como** um único objeto”).
- C1-03 (`power set`) — **RESOLVIDO**: agora uniformemente “**conjunto potência**” (token `slc-config.sty` L110), incl. §1.2, Def. 1.10, §1.6, Resumo.
- C1-04 (“section 1.1”) — **RESOLVIDO**: “**seção** 1.1” (cleveref PT, `slc-config.sty` L562).
- C1-05 (“irmão(ã)”) — **RESOLVIDO**: “irmão de Richard”.
- C1-02 (X/Y no Resumo) — **AINDA-PRESENTE** (mas = EN; ver A01-05).
- C1-06 (“não auto-membro”) — **AINDA-PRESENTE** (aceitável; estilo).

### Mini-síntese — **4,0 / 5**
Conteúdo (extensionalidade, subconjuntos, união/interseção, Russell) fiel e matematicamente correto; o CRÍTICO antigo foi corrigido. Nota puxada pela praga sistémica **`O.s.`** e por pequenos calcos/concordância.

---

## Capítulo 2 — Relações

**Fontes:** PDF PT pp. 39–54; `relations/*.tex`.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----|-------------------|
| A02-01 | **GRAVE** | `relations-as-sets`×8, `orders`×6, `equivalence-relations`×4, `operations`×2 / PDF §2.1–§2.7 | “i.e.” | “**O.s.**,” (dezenas de ocorrências) | Igual a A01-01: “isto é” / “ou seja”. |
| A02-02 | **GRAVE** | `trees.tex` / PDF §2.6 (p.50) | “The **set-theoretic concept of a tree** is closely related…” | “O conceito **teórico dos conjuntos de árvore** está intimamente relacionado…” | Mistradução/ambiguidade (“conjuntos de árvore”). Usar “O **conceito de árvore da teoria dos conjuntos**” ou “O conceito **conjuntista** de árvore” (cf. “definição teórico-conjuntista” usada logo abaixo). |
| A02-03 | **GRAVE** | `graphs.tex` (§2.5, p.46), `trees.tex` Ex. 2.35 (p.51) | “e.g.” | “diferem, **e.g.**, quanto a…”; “(**e.g.**, 101 ⊑ 101101)” | Latim/inglês visível. Trocar por “**p.ex.**” / “**por exemplo**”. |
| A02-04 | MENOR | capítulo | “iff” / “e.g.” | `sse` (§2.4+) **vs.** `se e só se` (§2.2–§2.3); `p.ex.` vs `por exemplo` | Unificar a política de abreviaturas no capítulo. |
| A02-05 | MENOR | `relations-as-sets.tex` / PDF §2.1 (p.39) | “Importantly, the order of elements does matter here.” | “**É importante que** a ordem dos elementos **seja relevante** aqui.” | Muda o sentido (de constatação para desejo). Usar “**Note-se que** a ordem dos elementos **importa** aqui” / “**É importante notar que**…”. |
| A02-06 | MENOR | PDF §2.1 (p.39), §2.7 (p.52), Probl. 2.4 | “from section 1.5”, “In Proposition 2.25”, “proof of Proposition 2.26” | “duas coisas **de seção** 1.5”, “**Em** Proposição 2.25”, “prova **de** Proposição 2.26” | Contração/artigo: “**da** seção”, “**Na** Proposição”, “**da** Proposição”. |
| A02-07 | MENOR | `trees.tex` / PDF §2.6 | “finitely/infinitely many successors” | “**finitamente muitos** sucessores”, “**infinitamente muitos** elementos” | Calco. “apenas um **número finito de** sucessores” / “**infinitos** elementos”. |
| A02-08 | ESTILO | capítulo | — | §2.1–§2.4 pt-PT (“chama-se”, “gozam da propriedade”, “nomeadamente”, “convém enfatizar”) vs. §2.5–§2.6 pt-BR (“se parece com isto”, “chamado de raiz”, “conectados”) | Registo inconsistente entre secções. Alinhar ao pt-BR. |
| A02-09 | MENOR | `trees.tex` Def. 2.34 / PDF p.51 | “for any z ∈ **X** \ B” | “para qualquer z ∈ **X** \ B” | Variável errada (deveria ser **A**\B, a árvore é sobre A). **Nota:** = erro do EN original; fidelidade. Corrigir a montante. |
| A02-10 | MENOR | `trees.tex` / PDF §2.6 (p.50) | “the relation a node x **stands in to** a node y” | “a relação em que um nó x **se encontra com** um nó y” | “stands in to” ≠ “encontra-se com”. Preferir “a relação em que um nó x **está para** um nó y”. |

**Verificação do audit antigo (Cap. 2):**
- C2-01 (“section 1.x”) — **RESOLVIDO** (“seção”); resta contração (A02-06).
- C2-02 (“é idêntico a”) — **RESOLVIDO/PARCIAL**: agora “a relação **ser idêntico a**” (aceitável).
- C2-03 (“quociente”) — **RESOLVIDO**.
- C2-04 (ramo/cadeia maximal; X\B) — **PARCIAL**: “ramo/cadeia maximal” OK; **X\B ainda presente** (=EN, A02-09).

### Mini-síntese — **3,7 / 5**
Capítulo tecnicamente forte (propriedades, equivalência, ordens, grafos, árvores, Kőnig). Puxado para baixo por `O.s.`, por `e.g.` em latim, por uma mistradução (“conceito teórico dos conjuntos de árvore”) e pelo registo misto.

---

## Capítulo 3 — Funções

**Fontes:** PDF PT pp. 55–69; `functions/*.tex`.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----|-------------------|
| A03-01 | **GRAVE** | `inverses`×6, `functions-relations`×3, `composition`×2, `function-basics`×1, `function-kinds`×1 / PDF §3.1–§3.6 | “i.e.” | “**O.s.**,” (p.ex. Ex. 3.6 “predecessor do sucessor…, **O.s.**, n+1”) | Igual a A01-01. Convive com “isto é” (§3.6, Resumo) — unificar. |
| A03-02 | MENOR | `inverses.tex` nota de rodapé 1 / PDF §3.4 (p.64) | “an issue we will gloss over” | “questão **a que a que** aqui não damos destaque” | Duplicação “a que a que” (typo visível). Corrigir para “questão **a que** aqui não damos destaque”. |
| A03-03 | MENOR | `slc-config.sty` L119 / PDF Def. 3.11, §3.2, §3.4–§3.5 | “bijection/bijections” | “**bijecção**/**bijecções**” (grafia europeia -cç-) | pt-BR = “**bijeção**/**bijeções**”. Além disso é **inconsistente** com `injeção`/`sobrejeção` (grafia BR, L117–118) e com o Resumo (“bijeção”, `summary-4.tex` L28). Corrigir o token. |
| A03-04 | ESTILO | capítulo | — | §3.1–§3.5 muito pt-PT (“**nalgum**”, “**partilhem**”, “**pormenor**”, “**estamos a apoiar-nos**”, “**Chamamos a A** o domínio”) vs. §3.6 + Resumo pt-BR (“são **chamados de**”, “é **chamada de**”) | Alinhar ao pt-BR. Ex.: “Chamamos a A o domínio” → “Chamamos **A de** domínio”. |
| A03-05 | MENOR | capítulo | “iff”/“i.e.”/“e.g.” | `se e só se` (defs) vs `sse` (Resumo); `O.s.` vs `isto é`; `p.ex.` (rodapé) | Unificar abreviaturas. |
| A03-06 | MENOR | PDF §3.3–§3.5, Probl. | “in Proposition/section …” | “**em** Proposição 3.13”, “Vimos **em** seção 3.2”, “**por** Proposição 3.18/3.19”, “na seção 3.4 **e seção** 3.5” | Contração/artigo: “**na** Proposição”, “**na** seção”, “**pela** Proposição”, “e **na** seção 3.5”. |

**Verificação do audit antigo (Cap. 3):** **grande melhoria.**
- C3-01 (`surjection/injection/bijection` em inglês) — **RESOLVIDO**: agora “sobrejeção/injeção/bijecção” (tokens `slc-config.sty` L117–119). *(Resta a grafia de “bijecção”, A03-03.)*
- C3-02 (“sobrejetora função” — ordem) — **RESOLVIDO**: legendas/def. agora “**função sobrejetora**” (Fig. 3.2–3.4, Def. 3.8).
- C3-03 (“Bijections…”) / C3-04 (“(Bijection)”) — **RESOLVIDOS** (“Bijecções…”, “(Bijecção)”).
- C3-05 (“induces a surjection”, “every bijection”) — **RESOLVIDO** (“induz uma sobrejeção”, “toda bijecção”).
- C3-06 (`range`) — **RESOLVIDO/alterado**: agora “**imagem** Im(f)” (símbolo `ran`→`Im`, consistente no capítulo).

### Mini-síntese — **4,1 / 5**
Salto de qualidade face ao audit antigo (2,9→4,1): tokens de tipo de função e a ordem adjetival foram corrigidos. Sobra a praga `O.s.`, a grafia “bijecção”, um “a que a que” e o registo pt-PT em §3.1–§3.5.

---

## Capítulo 4 — O Tamanho dos Conjuntos

**Fontes:** PDF PT pp. 70–98; `size-of-sets/*.tex`, `include/summary-4.tex`. **Capítulo mais problemático do bloco.**

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----|-------------------|
| A04-01 | **GRAVE** | `enumerability.tex` (×8: L89,95,105,108,110,166–175,190,210), `reduction.tex`×2, `non-enumerability.tex`×1, `equinumerous-sets.tex`×1 / PDF §4.2, §4.6, §4.7, §4.9, Probl. | “surjective/injective function” | “**sobrejetora função** f: ℤ⁺→A”, “a **sobrejetora função**”, “a **injetora função** ℕ²→ℕ” (~15+ vezes) | **Ordem invertida.** Fonte usa `!!{surjective} função`/`!!a{surjective} função`; reordenar para `função !!{surjective}` → “**função sobrejetora**”. **(= C4-02, ainda presente — o Cap. 3 já foi corrigido, este não.)** |
| A04-02 | **GRAVE** | `enumerability.tex` L84,165,180,182; `comparing-size.tex`; PDF §4.2, §4.6, Probl. 4.2–4.4 | “countable/uncountable sets” | “conjuntos **contável**”, “eram todos **contável**”, “conjuntos **incontável**”, “são chamados de **incontável**” | **Sem concordância de plural.** Fonte usa `!!{enumerable}` (singular) onde precisa do plural `!!{enumerable}s` → “**contáveis**”/“**incontáveis**”. **(= C4-03, ainda presente.)** |
| A04-03 | **GRAVE** | `enumerability.tex` L78 / PDF Prova Prop. 4.2 (p.72) | “if it is **an element** of A” | “se ele é **um um elemento** de A” | Artigo duplicado. A fonte tem “é **um** `!!a{element}`” e `!!a{element}`→“um elemento”. Remover o “um” manual: “é `!!a{element}`” → “é **um elemento**”. **(= C4-04, ainda presente.)** |
| A04-04 | **GRAVE** | `pairing-alt.tex`, `non-enumerability.tex`, `reduction.tex` / PDF §4.5–§4.7 (~7×: “em um **array**”, “as células no **array**”, “a diagonal do **array**”) | “array” | “**array**” (inglês) | Inglês visível **e** inconsistente com “**matriz**” usada em §4.3–§4.4. Traduzir tudo para “**matriz**”. |
| A04-05 | **GRAVE** | corpo `equinumerous-sets.tex` (L27,32,36), `comparing-size.tex` L16, `schroder-bernstein.tex` (L15,17,42) **vs.** `summary-4.tex` L28 / PDF §4.8–§4.10 vs. Resumo | “equinumerous / equinumerosity” | corpo: “**equipotente / equipotência**”; Resumo: “**equinumerosos**” | **Inconsistência do termo central do capítulo.** Token `equinumerous`→`equinumeroso` (L126). Unificar: usar “**equinumeroso**” em todo o lado (ou mudar token + Resumo para “equipotente”). |
| A04-06 | **GRAVE** | `pairing.tex` (L46,49,50,56,103) vs. `pairing-alt.tex` L91 + token L289 / PDF §4.4 vs. §4.5 | “pairing function” | §4.4: “função de **pareamento**”; §4.5/token: “função de **emparelhamento**” | Termo técnico inconsistente. Unificar (o token diz “**emparelhamento**”). |
| A04-07 | **GRAVE** | `zig-zag`×1, `comparing-size`×3, `equinumerous-sets`×3, `schroder-bernstein`×1, `pairing`×1 / PDF §4.3–§4.10 | “i.e.” | “**O.s.**,” | Igual a A01-01; convive com “isto é” (`enumerability.tex`) e `sse`. Unificar. |
| A04-08 | MENOR | `enumerability.tex` L98 / PDF §4.2 (p.73) | “is guaranteed to be the value” | “está **garantido de ser** o valor de f(n)” | Calco. “**está garantido que é** o valor” / “é **necessariamente** o valor”. (O Cap. 3 usou o melhor “garantidamente”.) **(= C4-05, ainda presente.)** |
| A04-09 | MENOR | `comparing-size.tex` L71,85; `reduction-alt.tex` L101 / PDF §4.9 (p.86) | “surjective” | “g não pode ser **sobrejectiva**”, “g é **sobrejectiva**” | Grafia europeia (-ct-) + forma divergente; inconsistente com “sobrejetora”. Usar “**sobrejetora**”. |
| A04-10 | MENOR | `slc-config.sty` L119 / PDF §4.2–§4.10 | “bijection” | “**bijecção**” no corpo vs. “**bijeção**” no Resumo | Mesma raiz de A03-03; corrigir token para pt-BR. |
| A04-11 | MENOR | `enumerability.tex` L46–47 / PDF §4.2 item 2 (p.71) | “enumerates … just as well as …” | “enumera os … quadrados **perfeitamente assim como** 1,4,9,16,25” | Calco de “just as well as”. Usar “**tão bem quanto**”. **(= C4-08, parcial.)** |
| A04-12 | MENOR | `enumerability.tex` L40,217,221,238 / PDF §4.2 (p.71), §4.2 (p.75) | “finitely/infinitely many elements” | “**finitamente muitos** elementos”, “**infinitamente muitos** elementos” | Calco. “**um número finito de** elementos” / “**infinitos** elementos”. |
| A04-13 | MENOR | PDF Probl. 4.7 (p.94) | “You may assume problem 4.6.” | “Pode assumir **PROBLEMA 4.6**.” | Referência renderizada em maiúsculas (artefacto). Deveria ser “o **Problema 4.6**”. |
| A04-14 | MENOR | PDF §4.2, §4.6, §4.7, §4.9 | “By Proposition…”, “proof of…”, “restate Theorem…”, “According to Definition…” | “**Por** Proposição 4.10”, “prova **de** Proposição 4.8”, “reformular Teorema 4.18”, “Prova **de** Teorema 4.18”, “De acordo com Definição 4.4” | Contração/artigo: “**Pela** Proposição”, “**da** Proposição”, “reformular **o** Teorema”, “Prova **do** Teorema”, “com **a** Definição”. |
| A04-15 | MENOR | `summary-4.tex` L8 / PDF Resumo (p.92) | “zig-zag method” | Resumo: “método **ziguezague**” vs. corpo “**zigue-zague**” | Unificar grafia (recomendar “**zigue-zague**”). **(= C4-11, parcial.)** |
| A04-16 | MENOR | `non-enumerability*.tex`, `reduction*.tex` / PDF §4.6–§4.7 | “0’s and 1’s” | “**0’s e 1’s**” (apóstrofo) vs. “**0s e 1s**” (§4.7) | Anglicismo de pluralização + inconsistente. Usar “**0s e 1s**” (ou “zeros e uns”). |
| A04-17 | ESTILO | capítulo | — | corpo/provas pt-PT (“**Há que** mostrar”, “não **precisa de** contar”, “**empregado de mesa**”, “ter **a** certeza”, “**por outras palavras**”) vs. Resumo pt-BR | Alinhar ao pt-BR (incl. a citação de Frege). |

**Verificação do audit antigo (Cap. 4):**
- C4-01 (`surjection/bijection/injection` em inglês) — **RESOLVIDO** (substantivos agora em PT).
- C4-06 (“section 1.5”) — **RESOLVIDO** (“na seção 1.5”).
- C4-07 (política contável/enumerável) — **RESOLVIDO** (unificado em “contável”).
- C4-10 (Schröder–Bernstein) — **OK** (consistente).
- **C4-02** (ordem “sobrejetora função”) — **AINDA-PRESENTE** (A04-01) — *não propagado do Cap. 3.*
- **C4-03** (“conjuntos contável” plural) — **AINDA-PRESENTE** (A04-02).
- **C4-04** (“um um elemento”) — **AINDA-PRESENTE** (A04-03).
- **C4-05** (“garantido de ser”) — **AINDA-PRESENTE** (A04-08).
- C4-08 (“perfeitamente”) — **PARCIAL** (“perfeitamente assim como”, A04-11).
- C4-09 (“função de emparelhamento”) — **REGRESSÃO**: agora inconsistente “pareamento”↔“emparelhamento” (A04-06).
- C4-11 (“zigue-zague”) — **PARCIAL** (“ziguezague” no Resumo, A04-15).

### Mini-síntese — **2,9 / 5**
Narrativa de Cantor (enumeração, zigue-zague, diagonal, redução, equipotência, Schröder–Bernstein) **semanticamente correta e didaticamente forte**, mas o PDF está marcado por defeitos visíveis: ordem adjetival invertida, falta de plural, “array” em inglês e dois termos-chave inconsistentes. As correções do Cap. 3 **não chegaram** a este capítulo.

---

## Verificação consolidada do audit antigo

| ID antigo | Estado | Nota |
|-----------|--------|------|
| C0-01 Part I/II/III | **RESOLVIDO** | “parte I/II/III” |
| C0-02 `derivable` | **RESOLVIDO** | “derivável” |
| C0-03 banner “PART I” | **RESOLVIDO** | “PARTE I” |
| C0-04 nomes próprios | FALSO POSITIVO | mantidos (corretos) |
| C0-05 editorial “naive” | N/A | não aparece no PDF |
| C1-01 `{as}`→como | **RESOLVIDO** | CRÍTICO antigo eliminado |
| C1-02 Resumo X/Y | **AINDA** | mas = EN (fidelidade) |
| C1-03 power set | **RESOLVIDO** | “conjunto potência” uniforme |
| C1-04 “section 1.1” | **RESOLVIDO** | “seção” |
| C1-05 “irmão(ã)” | **RESOLVIDO** | “irmão” |
| C1-06 “não auto-membro” | **AINDA** | aceitável (estilo) |
| C1-07 “Cadeias” | OK | — |
| C2-01 refs “section” | **RESOLVIDO** | resta contração |
| C2-02 “é idêntico a” | **RESOLVIDO** | “ser idêntico a” |
| C2-03 “quociente” | **RESOLVIDO** | — |
| C2-04 ramo / X\B | **PARCIAL** | X\B ainda (=EN) |
| C3-01 tipos em inglês | **RESOLVIDO** | tokens PT (grafia “bijecção”) |
| C3-02 “sobrejetora função” | **RESOLVIDO** | “função sobrejetora” |
| C3-03/C3-04 Bijection(s) | **RESOLVIDOS** | — |
| C3-05 induces/every | **RESOLVIDO** | — |
| C3-06 range→imagem | **RESOLVIDO** | símbolo `Im(f)` |
| C4-01 nomes em inglês | **RESOLVIDO** | — |
| C4-02 “sobrejetora função” | **AINDA** | pervasivo no Cap. 4 |
| C4-03 plural “contável” | **AINDA** | pervasivo |
| C4-04 “um um elemento” | **AINDA** | `enumerability.tex` L78 |
| C4-05 “garantido de ser” | **AINDA** | L98 |
| C4-06 “section 1.5” | **RESOLVIDO** | “seção” |
| C4-07 contável/enumerável | **RESOLVIDO** | unificado “contável” |
| C4-08 “perfeitamente” | **PARCIAL** | “perfeitamente assim como” |
| C4-09 pairing function | **REGRESSÃO** | pareamento↔emparelhamento |
| C4-10 Schröder–Bernstein | OK | — |
| C4-11 zig-zag | **PARCIAL** | “ziguezague” no Resumo |
| C4-12 Dedekind infinite | N/A | fora do PDF |

---

## Falsos positivos (não corrigir — não perder tempo)

- **Símbolos matemáticos:** ℕ ℤ ℚ ℝ ℘ ⟨ ⟩ ⊆ ⊊ ∈ ≈ ⪯ ≺ ≼ ⊑, e as abreviaturas de função `dom`, `ran`/`Im`, `len`, `Id`. **Corretos.**
- **`sse`** (convenção do projeto para “se e somente se”) — aceitável; só falta **consistência** com “se e só se” (A02-04/A03-05).
- **Nomes próprios / históricos:** Cantor, Gödel, Turing, Church, Hilbert, Frege, Russell, Gentzen, Wiener–Kuratowski, Schröder, Bernstein, **Kőnig** (com ő húngaro — preservado corretamente), Leach-Krouse.
- **Nomes/URLs institucionais:** “University of Calgary”, “forall x: Calgary”, “Carnap”, “carnap.io”, “slc.openlogicproject.org”, “turing.openlogicproject.org”, “Amazon”, “LMS”, “CC BY”, “Fitch”, “PDF”. (Manter; tradução opcional só de “University of Calgary”.)
- **“Gráfico de uma função”** (= graph of f) — **terminologia matemática correta** em PT (conjunto de pares), não confundir com “figura”.
- **Latim mantido por opção editorial:** “modus ponens”, “reductio”. OK.
- ⚠️ **Não** são falsos positivos (são achados reais): **“array”** (inglês, A04-04), **“e.g.”** (A02-03), **“O.s.”** (A01-01 etc.).

---

## Observações sobre tokens (`slc-config.sty`) e infraestrutura

- **Funcionam bem:** `power set`→“conjunto potência” (L110); `enumerable`→“contável/contáveis” (L37 — falha só quando invocado no singular, A04-02); `surjective/injective/bijective`→“sobrejetora/injetora/bijetora” (L114–116); `surjection/injection`→“sobrejeção/injeção” (L117–118); cleveref PT `seção/capítulo/parte/apêndice` (L562–569).
- **A corrigir no token:** **L119** `\settexttoken{bijection}{bijecção}{bijecções}` → pt-BR **`{bijeção}{bijeções}`** (A03-03/A04-10). **L342** `metalogic`→`{metalogica}` sem acento → **`{metalógica}`** (A00-01).
- **Uso incorreto do token na fonte (não é falha do token):** ordem `!!{surjective} função` em `size-of-sets/` (A04-01); singular `!!{enumerable}` onde é preciso `!!{enumerable}s` (A04-02); `um !!a{element}` (artigo duplicado, A04-03).
- **Termos digitados à mão que divergem do token/entre si:** `equipotência` (corpo) vs. `equinumeroso` (token/Resumo) — A04-05; `pareamento` vs. `emparelhamento` (token) — A04-06; `sobrejectiva` vs. `sobrejetora` — A04-09.
- **Referências cruzadas** produzem “Proposição/Definição/Teorema/seção N” sem artigo → sem contração PT (“em Proposição”, “de seção”). Afeta caps. 2–4 (A02-06, A03-06, A04-14). E “problem 4.6” sai em maiúsculas (A04-13).

---

## Prioridades (impacto × esforço)

| # | Sev | Ação | Onde | Esforço |
|---|-----|------|------|---------|
| 1 | GRAVE | Reordenar `!!{surjective} função` → `função !!{surjective}` | `size-of-sets/*.tex` (A04-01) | Baixo |
| 2 | GRAVE | Plural: `!!{enumerable}` → `!!{enumerable}s` em contexto plural | `enumerability.tex` etc. (A04-02) | Baixo |
| 3 | GRAVE | Traduzir “array” → “matriz” | §4.5–§4.7 (A04-04) | Baixo |
| 4 | GRAVE | Unificar “equipotência”↔“equinumeroso” e “pareamento”↔“emparelhamento” | §4.4, §4.8–§4.10 (A04-05/06) | Médio |
| 5 | GRAVE | Substituir **`O.s.`** → “isto é”/“ou seja” em todo o bloco | caps. 1–4 (A0x-01/07) | Médio |
| 6 | GRAVE | Remover “um” manual antes de `!!a{element}` | `enumerability.tex` L78 (A04-03) | Trivial |
| 7 | MENOR | Token `bijection`→“bijeção”; `metalogic`→“metalógica” | `slc-config.sty` L119, L342 | Trivial |
| 8 | MENOR | Corrigir “e.g.”, “a que a que”, “PROBLEMA 4.6”, “tópicos como como” | caps. 0, 2, 3, 4 | Trivial |
| 9 | MENOR | Contração de refs (“na Proposição”, “da seção”, “pela Proposição”) | caps. 2–4 | Médio |
| 10 | ESTILO | Uniformizar registo pt-BR (ênclise, “os seus”, “se e só se”, “nalgum”, “empregado de mesa”) | corpo dos caps. | Alto |

---

*Auditoria manual ponto-a-ponto sobre o PDF PT atual (primário) confrontado com o EN e com a fonte LaTeX `locale/pt`. Nenhum ficheiro-fonte `.tex`/`.sty` foi modificado.*
