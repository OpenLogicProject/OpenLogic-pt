# Auditoria de qualidade EN→PT (SLC) — Bloco Caps. 5–8

**Livro:** OpenLogic — *Sets, Logic, and Computation* (SLC)
**Bloco:** Cap. 5 (Introdução à Lógica de Primeira Ordem) · Cap. 6 (Sintaxe) · Cap. 7 (Semântica) · Cap. 8 (Teorias e Seus Modelos)
**Data:** 2026-07-10
**Tipo:** Auditoria (apenas análise — nenhum ficheiro-fonte `.tex`/`.sty` foi modificado)

**Método:** Primário = texto PT do PDF (`verificacao/comparacao-pdf/cap-0[5-8]-pt.txt`), comparado semanticamente com o EN do PDF (`…-en.txt`). Comparação não linha-a-linha. Fonte LaTeX PT (`OpenLogic/locale/pt/content/first-order-logic/`) consultada para confirmar `first-order-logic/introduction/substitution.tex` (§5.7).

**Severidades:** CRÍTICO (inglês residual visível / erro semântico grave / bloqueio de leitura) · GRAVE (mistradução, agramaticalidade forte, inconsistência de termo-chave) · MENOR (concordância, artefacto de token, lapso pontual) · ESTILO (calque, preferência terminológica).

---

## Síntese executiva

| Cap. | Título | Nota | C / G / M / E |
|------|--------|------|---------------|
| 5 | Introdução à Lógica de Primeira Ordem | **2,5 / 5** | 1 / 3 / 6 / 2 |
| 6 | Sintaxe da Lógica de Primeira Ordem | **4,5 / 5** | 0 / 0 / 2 / 2 |
| 7 | Semântica da Lógica de Primeira Ordem | **4,0 / 5** | 0 / 1 / 1 / 1 |
| 8 | Teorias e Seus Modelos | **4,3 / 5** | 0 / 0 / 2 / 1 |
| **Total** | | | **1 / 4 / 11 / 6** |

**Veredicto:** Caps. 6–8 estão em bom nível de publicação. As correções de infraestrutura do audit antigo (macro `\indcase*`/"is atomic", título do capítulo) **foram aplicadas** e já não são visíveis no PDF. O ponto crítico do bloco continua a ser a **§5.7 (Substituição)**: o parágrafo permanece meio-traduzido, com **inglês residual visível no PDF** ("but for any", "and term t", "substitution", "derivad") e várias frases agramaticais. A restante prosa do cap. 5 é sólida, mas tem um conjunto de lapsos de concordância de género. Persiste, transversalmente, a **inconsistência terminológica de "entails"** (consequência / implica / acarretamento).

---

## Capítulo 5 — Introdução à Lógica de Primeira Ordem

**Fontes:** PDF pp. 99–113 (PT) / 95–108 (EN); LaTeX `introduction/*.tex`.

| ID | Sev | Local | EN (referência) | PT atual | Correção sugerida |
|----|-----|-------|-----------------|----------|-------------------|
| B05-01 | **CRÍTICO** | §5.7 Substituição (`substitution.tex`) | "…in the most general terms: not just for P, a, and v0, but for any formula A, and term t, and variable x." / "we define the operation of substitution." / "you have derived ∀x A(x)" | "…enunciá-lo em os termos mais gerais: não apenas para P, a e v0, **but for any** fórmula A, **and term** t, e variável x." / "definimos a operação de **substitution**." / "sempre que você tem **derivad** ∀x A(x)" | Retraduzir o bloco: "**mas para qualquer** fórmula A, **e termo** t"; "operação de **substituição**"; "sempre que você tiver **derivado** ∀x A(x)". Corrigir token `!!{derive}d` (gera "derivad") e o `\emph{substitution}` cru no fonte |
| B05-02 | **GRAVE** | §5.7 (`substitution.tex`) | "Our derivation systems should let us derive P(a)…" / "state this as a rule of inference" / "we can't just replace all x's in A by t" / "we have to again prove" | "Nossos sistemas **derivação deveriam permitir nós deriva** P(a)…" / "como **um** regra de inferência" / "substituir todos os x **estão em** A por t" / "temos **para** provar novamente" | "Nossos sistemas **de derivação deveriam permitir-nos derivar** P(a)"; "como **uma** regra"; "substituir todos os x **em** A"; "temos **de/que** provar" |
| B05-03 | **GRAVE** | §5.7 (`substitution.tex`) | "whether or not M ⊨ A(t) **holds** depends only on the value of the term t" | "se M ⊨A(t) **é válido ou não** depende apenas **no** valor do termo t" | "se M ⊨A(t) **vale (ou não)** depende apenas **do** valor do termo t" (erro semântico: "válido" ≠ "vale/satisfaz") |
| B05-04 | **GRAVE** | §5.7 (`substitution.tex`) | "…then M,s ⊨ A(t) **iff** M,s[m/x] ⊨ A(x)." / "if we let m be whatever element of \|M\| **is picked out by** t" | "…então M,s ⊨A(t) **se** M,s[m/x] ⊨A(x)." / "se deixarmos m ser qualquer elemento de \|M\| **é selecionado por** t" | Restaurar o bicondicional: "**se, e somente se,**"; corrigir "…qualquer elemento de \|M\| **que for selecionado por** t" |
| B05-05 | MENOR | §5.4 Satisfação (PDF p.104) | "A structure M consists of just these three things" | "**Uma Uma** estrutura M consiste apenas nestas três coisas" | Artigo duplicado — o token `!!^a{structure}` já traz "Uma"; remover o "Uma" manual (audit antigo C5-04, **ainda presente**) |
| B05-06 | MENOR | §5.3 Fórmulas (PDF p.103) | "a single predicate symbol P and a single constant symbol a" | "um único predicado P e **uma única** símbolo de constante a" | "**um único** símbolo de constante" (concordância: *símbolo* é masculino) |
| B05-07 | MENOR | §5.3 (PDF p.103) | "function symbols which can be combined with…" | "símbolos de função que podem ser **combinadas** com…" | "podem ser **combinados**" (concordância com *símbolos*) |
| B05-08 | MENOR | §5.5 Sentenças (PDF p.107) | "in the part of the sentence to which that quantifier applies" | "na parte **do** sentença à qual esse quantificador se aplica" | "na parte **da** sentença" (*sentença* é feminino) |
| B05-09 | MENOR | §5.5 Sentenças (PDF p.107) | "We will take sentences to be all those formulas that have no free variables." | "Tomaremos **os** sentenças como sendo **todos aqueles** fórmulas que não têm variáveis livres." | "Tomaremos **as** sentenças como sendo **todas aquelas** fórmulas…" (dois erros de concordância na definição de sentença) |
| B05-10 | MENOR | §5.9 Correção e Completude (PDF p.113) | "Derivations are always finite arrangements of symbols" | "**As Derivações** são sempre disposições finitas de símbolos" | "As **derivações**" (maiúscula indevida a meio de frase — provável token `!!{Derivation}s`) |
| B05-11 | ESTILO | §5.2/§5.3 | "infinitely many predicate symbols" / "we are allowed to form" | "**infinitamente muitos** predicados" / "somos **permitidos a** formar" | Preferir "**infinitos** predicados"; "**é-nos permitido** formar" (calques de EN) |
| B05-12 | ESTILO | §5.1/§5.6/§5.7 | "entail(s)" / "follows from" | Mistura de "**implicam/implica**" (§5.1, §5.7) e "**consequência de**" (§5.6, §5.8, §5.9) | Unificar em "**consequência de** / **é consequência de**" (ver B07-01) |

### Nota: **2,5 / 5**
A §5.7 é a única secção do bloco com inglês visível ao leitor e frases quebradas; pesa muito porque aparece impressa no PDF. As secções 5.1–5.6 e 5.8–5.9 estão corretas no conteúdo, mas o cap. tem um cacho de lapsos de concordância de género.

---

## Capítulo 6 — Sintaxe da Lógica de Primeira Ordem

**Fontes:** PDF pp. 114–139 (PT) / 109–133 (EN); LaTeX `syntax-and-semantics/*.tex`.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----------|-------------------|
| B06-01 | MENOR | §6.5 Operador principal (PDF p.126) | "This guarantees that for each non-atomic formula A a main operator exists." | "Isso garante que, para cada fórmula A não atômica, existe **a** operador principal." | "existe **o** operador principal" (concordância: *operador* é masculino) — audit antigo C6-08, **ainda presente** |
| B06-02 | MENOR | §6.8 Escopo, Def. 6.35 (PDF p.135) | "these occurrences are bound by the mentioned quantifier occurrence" | "essas ocorrências são ligadas **por a** ocorrência de quantificador mencionada" | "ligadas **pela** ocorrência" (falta a contração *por + a = pela*) |
| B06-03 | ESTILO | §6.7 Prop. 6.32 (PDF p.134) | "B is a sub-formula of A" | "B é uma **sub-fórmula** de A" | Uniformizar com "**subfórmula**" (usado no resto do cap.); fiel ao EN, que também escreve "sub-formula" só aqui |
| B06-04 | ESTILO | §6.2 e Resumo | "predicate symbols" | "**predicados**" (corpo/def.) vs "**símbolos de predicado**" (Resumo) | Escolha de token deliberada; alinhar prosa manual com o token para não misturar "predicado" e "símbolo de predicado" |

### Nota: **4,5 / 5**
Excelente recuperação face ao audit antigo: o "is atomic" (macro `\indcase*`) e a duplicação "é atômica: é atômica" **desapareceram** — os rótulos de caso surgem em PT ("A é atômica: …"). O título do capítulo está corretamente traduzido. Só restam dois lapsos de concordância e afinação de estilo.

---

## Capítulo 7 — Semântica da Lógica de Primeira Ordem

**Fontes:** PDF pp. 140–163 (PT) / 134–156 (EN); LaTeX `syntax-and-semantics/{structures,satisfaction,assignments,extensionality,semantic-notions}.tex`.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----------|-------------------|
| B07-01 | **GRAVE** | §7.1, Def. 7.25 e Resumo (PDF pp.140, 158, 160) | "entailment" / "𝛤 entails A" / "entailed by" | §7.1: "é **consequência** de"; Def. 7.25 **intitulada "Consequência"** mas o corpo diz "𝛤 **implica** A"; Resumo: "é **acarretada** por" | Fixar UM termo para `\Entails`. Recomendado: **"consequência"** (nome) + **"é consequência de"** (verbo). Alinhar título e corpo da Def. 7.25 e o Resumo (evitar "implica" e "acarretada") |
| B07-02 | MENOR | §7.2 (PDF p.143) | "there are many other possible structures for LA" | "há muitos **outros estruturas** possíveis para LA" | "há muitas **outras estruturas** possíveis" (concordância: *estrutura* é feminino) — audit antigo C7-03, **ainda presente** |
| B07-03 | ESTILO | Def. 7.1 vs Prop. 7.20 | "predicate symbol" / "relation symbol" | "**predicado**" (Def. 7.1) e "**símbolo de relação**" (Prop. 7.20) | Coerente com política de tokens; apenas assegurar consistência prosa↔token |

### Nota: **4,0 / 5**
Tradução madura e matematicamente limpa (estruturas, valor de termos, x-variantes, satisfação, extensionalidade, noções semânticas). A nota é limitada pela inconsistência do termo "entailment" e por um erro de concordância pontual.

---

## Capítulo 8 — Teorias e Seus Modelos

**Fontes:** PDF pp. 164–180 (PT) / 157–172 (EN); LaTeX `models-theories/*.tex`.

| ID | Sev | Local | EN | PT atual | Correção sugerida |
|----|-----|-------|----|----------|-------------------|
| B08-01 | MENOR | §8.3 Ex. 8.8 (PDF pp.171) vs Resumo (PDF p.179) | "parthood structure" / "theories of parthood" | Corpo: "estrutura **de parte**", "teorias **de parte**"; Resumo: "teorias da **relação parte-todo**" | Unificar; termo consagrado "**mereologia**"/"estrutura **mereológica**" ou "relação **parte-todo**" em todo o cap. (audit antigo C8-02, **ainda presente**) |
| B08-02 | MENOR | Resumo (PDF p.179) vs corpo §8.1 | "entailed by" / "closed under entailment" | Corpo: "são **consequência** dos axiomas"; Resumo: "acarretada por elas", "fechado sob **acarretamento**", "**acarretadas** por 𝛥" | Uniformizar com o termo escolhido em B07-01 (o Resumo introduz "acarretamento", ausente do corpo) |
| B08-03 | ESTILO | §8.4/§8.5 Def. 8.9, Prob. 8.3 | "language L of M" | "linguagem **Lde** M" / "fórmula de **Lna** qual" / "Seja **La** linguagem" | Provável artefacto de extração/espaçamento após `$\Lang$`; verificar no PDF renderizado se há falta de espaço real |

### Nota: **4,3 / 5**
Melhor capítulo do bloco: método axiomático, fecho, exemplos (ordens, grupos, Peano, conjuntos puros, ZFC, Cantor/Russell, mereologia, tamanho de estruturas) fiéis e legíveis. Só afinação terminológica (mereologia; consequência vs acarretamento).

---

## Verificação do audit antigo (`comparacao-qualidade/caps-05-08.md`)

| Antigo | Descrição | Estado atual | Nota |
|--------|-----------|--------------|------|
| C5-01 | §5.7: bloco EN residual / frases quebradas | **AINDA-PRESENTE** | Ver B05-01/B05-02 — inglês ainda impresso no PDF |
| C5-02 | §5.7: "é válido" por "vale/satisfaz" | **AINDA-PRESENTE** | Ver B05-03 |
| C5-03 | "justificado ao inferir" / "no sentido que" | **PARCIAL** | "no sentido **que**" persiste (→ "de que"); "justificado ao inferir" é aceitável |
| C5-04 | "Uma Uma estrutura" (artigo duplicado) | **AINDA-PRESENTE** | Ver B05-05 |
| C5-05 | Exemplo domínio {0,1,2} vs "1, 2 ou 3" | **FALSO POSITIVO** | Erro existe também no EN ("one of 1, 2, or 3"); PT é fiel |
| C5-06 | "𝛤s inconsistentes" | **FALSO POSITIVO** (fiel) | EN também usa "Γs"; opção estilística |
| C5-07 | consequência vs implicada | **AINDA-PRESENTE** | Evoluiu para 3 variantes (ver B07-01) |
| C5-08 | "predicados" (token) | **AINDA-PRESENTE** (por design) | ESTILO — ver B06-04 |
| C5-09 | "section B.4" (inglês) no PDF | **RESOLVIDO** | PDF mostra "seção B.4"/"seção B.5" (apenas falta artigo: "em seção" → "na seção") |
| C6-01 | `\indcase*` → "is atomic" (inglês) | **RESOLVIDO** | PDF mostra "A é atômica:" nas Def. 6.15, 6.33 |
| C6-02 | Título "Syntax and Semantics" por traduzir | **RESOLVIDO** | Título do cap. 6 = "Sintaxe da Lógica de Primeira Ordem" |
| C6-03 | Duplicação "é atômica: é atômica" | **RESOLVIDO** | Sem duplicação |
| C6-04 | "contem" → "contam" | **FALSO POSITIVO** | "para que … **contem**" é subjuntivo **correto**; a sugestão antiga ("contam") estava errada |
| C6-05 | "⊤abrevia" (espaço) | **FALSO POSITIVO** | Artefacto de extração (símbolo colado ao texto) |
| C6-06 | "predicados" abreviado | **AINDA-PRESENTE** (por design) | Ver B06-04 |
| C6-07 | "free for" → "livre para" | **RESOLVIDO** | Def. 6.39: "está livre para x em A" |
| C6-08 | "existe a operador principal" | **AINDA-PRESENTE** | Ver B06-01 |
| C7-01 | entailment: implicada vs consequência | **AINDA-PRESENTE** | Ver B07-01 |
| C7-03 | "muitos outros estruturas" | **AINDA-PRESENTE** | Ver B07-02 |
| C7-04 | herança `\indcase` (rótulos EN) | **RESOLVIDO** | Rótulos de caso em PT no cap. 7 |
| C8-01 | "Lde M" (quebra) | **PARCIAL / a verificar** | Ver B08-03 (provável artefacto de extração) |
| C8-02 | "estrutura de parte" → mereologia | **AINDA-PRESENTE** | Ver B08-01 |
| C8-03 | "implicadas pelos axiomas" | **AINDA-PRESENTE** | Ver B08-02 |

---

## Falsos positivos (descartados)

- **Exemplo do domínio (§5.4):** "para um entre 1, 2 ou 3" reproduz fielmente o erro do EN ("to one of 1, 2, or 3", com domínio {0,1,2}). Não é defeito de tradução.
- **"𝛤s inconsistentes" (§5.9):** espelha "Γs" do EN; notação, não erro.
- **"para que … contem como fórmulas" (§6.3):** subjuntivo **correto** de *contar* ("que eles contem"); a correção antiga para "contam" seria agramatical.
- **"⊤abrevia", "Lé", "La", "Lde", "Lna":** símbolos/`$\Lang$` colados ao texto na extração do PDF — artefactos de `pdftotext`, não necessariamente erros no PDF renderizado (B08-03 deve ser confirmado visualmente).
- **`Frm(L0)` (Teorema 6.29):** presente igualmente no EN; fiel ao original.
- **Nomes/termos próprios e símbolos:** Sheffer, Peirce, Quine, Löwenheim–Skolem, ZFC, HF, "nand"/"nor", "falsum"/"verum", `Frm`, `Trm`, `Val`, `sse` — manter.

---

## Mini-síntese por capítulo

- **Cap. 5 — 2,5/5.** Conteúdo introdutório bem transmitido, **exceto a §5.7**, que continua meio-traduzida (inglês visível + frases quebradas + erro semântico "válido") e é o achado mais grave do bloco. Somam-se lapsos de concordância de género espalhados.
- **Cap. 6 — 4,5/5.** Praticamente pronto para publicação; as correções de infraestrutura do audit antigo pegaram. Só dois lapsos de concordância ("a operador", "por a ocorrência").
- **Cap. 7 — 4,0/5.** Semântica madura e correta; limitado pela inconsistência do termo "entailment" (consequência/implica/acarretamento) e uma concordância ("outros estruturas").
- **Cap. 8 — 4,3/5.** O mais polido; apenas terminologia de mereologia e a mesma questão consequência/acarretamento no Resumo.

---

*Auditoria manual ponto a ponto. Nenhum ficheiro-fonte alterado. Recomenda-se, após corrigir a §5.7 e unificar o termo `\Entails`, recompilar o PDF e rever apenas as páginas afetadas (pp. 109–110 PT do cap. 5).*
