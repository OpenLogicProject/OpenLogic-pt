# Fix-log — Aplicação de correções EN→PT (Bloco Caps. 9–12)

**Livro:** OpenLogic — *Sets, Logic, and Computation* (SLC)
**Data:** 2026-07-10
**Base:** `relatorios/finalizacao-slc/audit-cap-09-12.md` + `decisoes-terminologia-config.md`
**Âmbito editado (só `.tex`):** `OpenLogic/locale/pt/content/first-order-logic/{proof-systems,sequent-calculus,natural-deduction,completeness}/`
**Fonte de verdade:** `OpenLogic-original/content/first-order-logic/…` (inglês). Nenhum `.sty`/config, `include/` ou outra pasta foi tocado. UTF-8.

---

## Síntese

- **Ficheiros `.tex` editados:** 22
- **Achados aplicados:** 2 CRÍTICO · 4 GRAVE · 12 MENOR · 3 ESTILO
- **Não aplicados:** 3 (C09-01, C10-03, C12-03 parcial) — motivos abaixo.

| Sev | IDs aplicados | IDs não aplicados |
|-----|---------------|-------------------|
| CRÍTICO | C11-01, C11-02 | C09-01 (config, fora de âmbito — já resolvido) |
| GRAVE | C10-01, C11-03, C12-01 | — |
| MENOR | C09-02, C09-03, C09-04, C10-02, C10-04, C11-04, C11-05, C11-06, C11-07, C11-08, C11-10, C12-02, C12-03(parte) | C10-03 (token; config), C12-03(§12.1 — EN idêntico) |
| ESTILO | C10-05, C11-09, C12-04 | — |

---

## PRIORIDADE MÁXIMA — §11.9 traduzida (C11-01 / C11-02)

`natural-deduction/provability-propositional.tex` — **secção inteira traduzida do inglês**, usando o homólogo `sequent-calculus/provability-propositional.tex` como molde. LaTeX, tokens, `\olref/\ollabel`, prooftrees e matemática preservados exatamente.

- Título: `\olsection{\usetoken{S}{derivability} e os Conectivos Proposicionais}`.
- Abertura corrigida (C11-02): «da natureza a dedução» → «a relação de !!{derivability}~\Proves da **dedução natural**».
- Enunciados: "Both … and" → «Tanto … quanto»; "is inconsistent" → «é inconsistente».
- Provas: "We can derive both/‌:" → «Podemos derivar ambos:/:»; "Consider the following derivation" → «Considere a seguinte !!{derivation}»; "This is a derivation of ⊥ from undischarged assumptions …" → «Esta é !!a{derivation} de ⊥ a partir das hipóteses **não descarregadas** …»; "This is shown by the following two derivations" → «Isso é mostrado pelas duas !!{derivation}s seguintes»; "Note that →Intro may, but does not have to, discharge the assumption A" → «Note que \Intro{\lif} pode, mas não precisa, **descarregar** a hipótese A».

---

## Correções por ficheiro

### Cap. 9 — proof-systems
- **tableaux.tex** — C09-02 (artigo duplicado): removido «Uma»/«Um» manual antes de `!!^a{signed formula}` (×1) e `!!^a{tableau}` (×2); o token já gera o artigo.
- **natural-deduction.tex** — C09-03: «podem ``!!{discharge}''-las» → «podem **descarregá-las**». C09-04: «permanecem !!{undischarged}» / «suas hipóteses !!{undischarged}» / «hipóteses são !!{discharged}» → forma plural do token (`}s`). C11-09 (extensão terminológica): «semântica prova-teórica» → «semântica **da Teoria da Prova**».

### Cap. 10 — sequent-calculus
- **soundness.tex** — C10-01: «não pode !!{derive} coisas» → «não pode **derivar** coisas». C10-02: «sequentes !!{derivable}» → «!!{derivable}s» (deriváveis).
- **provability-consistency.tex** — C10-01: «Podemos então !!{derive}» → «Podemos então **derivar**» (×2).
- **provability-propositional.tex** — C10-02: «são !!{derivable}:» → «são !!{derivable}s:» (×2, deriváveis).
- **derivations.tex** — C10-04: «são gerados» → «são **geradas**». C10-05: título `[$\Log{LK}$ !!{derivation}]` → `[$\Log{LK}$**-**!!{derivation}]` (uniformiza com «LK-derivação» do corpo).

### Cap. 11 — natural-deduction
- **provability-propositional.tex** — §11.9 traduzida (ver acima).
- **soundness.tex** — derive infinitivo (×1); «propriedade prova-teórica»→«da Teoria da Prova» (C11-09); concordância de número em `!!{undischarged}` (×16) e `!!{discharged}` (×1) após «hipóteses».
- **derivations.tex** — «gerados»→«geradas» (C11-07); `!!{discharged}`/`!!{undischarged}` plural (×2); «nos permite !!{discharge}»→«**descarregar**» (C11-04).
- **proof-theoretic-notions.tex** — título «Noções Prova-Teóricas»→«**Noções da Teoria da Prova**» + prosa `\emph{prova-teóricas}`→`\emph{da Teoria da Prova}` (C11-09); `!!{discharged}`/`!!{undischarged}` plural (×5).
- **rules-and-proofs.tex** — «As hipóteses são ``!!{discharged}''»→plural `}s` (C11-05, §11.1).
- **quantifier-rules.tex** — «hipóteses !!{undischarged} das quais»→plural `}s`.
- **provability-consistency.tex** — «Podemos então !!{derive}»→«**derivar**» (×2, C11-03); `!!{undischarged}` plural (×3); «as hipóteses A e ¬A são !!{discharged}»→`}s` (×1).
- **soundness-identity.tex** — «hipóteses !!{undischarged}»→plural `}s` (×1).
- **identity.tex** — «nos permite !!{derive}»/«para !!{derive}»→«**derivar**» (C11-03, ×2); «!!{derive}mos a sentença»→`!!^{derive}mos` (**Derivamos**, maiúscula em início de exemplo, C11-08).
- **proving-things.tex** — «suposições foram !!{discharged}»→`}s` (C11-05); «no **end-sequent**»→«na **conclusão**» (C11-10); derive infinitivo (×5: «queremos/para/queiramos/tentar derivar», «exigiria derivar»).
- **proving-things-quant.tex** — «montando **o** !!{derivation}»→«**a**» e «última linha **do** !!{derivation}»→«**da**» (C11-06, gênero); «como !!{derive} uma contradição»→«**derivar**» (C11-03).

### Cap. 12 — completeness
- **complete-consistent-sets.tex** — C12-01 (artigo/ordem): «em !!a{complete} conjunto consistente»→«em **um conjunto consistente** !!{complete}» (×3, incl. `!!^a{complete}` em início de frase→«Um conjunto consistente completo»). C12-02: «teoria que é !!{complete}»→«que é **completa**» (fem., literal). C12-04 (ordem adjetival): «!!^{complete}s conjuntos …»→«**Conjuntos** … **!!{complete}s**» (×2).
- **outline.tex** — C12-01: «!!a{complete} conjunto consistente»→«um conjunto consistente !!{complete}».
- **construction-of-model.tex** — C12-01: «!!a{complete} conjunto consistente, saturado»→«um conjunto consistente, !!{complete} e saturado».
- **lindenbaums-lemma.tex** — C12-01: «estendido a !!a{complete} conjunto consistente»→«a um conjunto consistente !!{complete}».
- **downward-ls.tex** — C12-03 (§12.11, Ex. Paradoxo de Skolem): «eles mesmos são !!{enumerable}»→«!!{enumerable}s» (**enumeráveis**, concordância com «eles mesmos»/modelos).

---

## Notas sobre a mecânica de tokens (confirmada no config, só leitura)

- `\settexttoken{derive}{deriva}{derivam}`, `{derivable}{derivável}{deriváveis}`, `{discharged}{descarregada}{descarregadas}`, `{undischarged}{não descarregada}{não descarregadas}` (em `slc-config.sty`, que sobrepõe `open-logic-config.sty`).
- `!!{tok}` = forma singular/base; **`!!{tok}s` = forma plural** (3.º argumento). Por isso a correção de concordância foi feita **marcando o plural no token** (`!!{undischarged}s`, `!!{discharged}s`, `!!{derivable}s`) — conforme recomendado no audit («marcar o plural após substantivo plural»), preservando o token.
- Infinitivo: onde o texto exige infinitivo, o token `!!{derive}`/`!!{discharge}` (que gera «deriva»/«descarrega») foi substituído pela **palavra literal** «derivar»/«descarregar». A 3.ª pessoa correta («ele deriva demais», «LK não deriva», `!!{derive}s`) foi **mantida**.

---

## Não aplicados (com motivo)

1. **C09-01 (CRÍTICO) — rótulo `\TAss` = «Assumption».** O macro está em `courses/sets-logic-computation-pt/slc-config.sty` (config), **fora do âmbito**. Já corrigido na Fase 3 (`\DeclareDocumentMacro \TAss {Hipótese}`, ver `decisoes-terminologia-config.md`). O fonte `tableaux.tex` usa `just = \TAss` corretamente — sem alteração necessária.
2. **C10-03 (MENOR) — «LK derivam».** O fonte usa o token `\Log{LK} !!{derive}s`; instrução explícita = «manter o token onde a 3.ª pessoa está correta (ex.: LK deriva)». A eventual saída plural «derivam» vem de `\settexttoken{derive}{deriva}{derivam}` em `slc-config.sty` (config, **fora do âmbito**). **Recomendação:** alinhar o plural do token para «deriva» no config, ou reverificar após recompilar.
3. **C12-03 §12.1 (MENOR) — «um modelo finito ou denumerável».** Falso positivo de tradução: o **inglês** (`completeness/introduction.tex`) também usa `!!{denumerable}s model`. Alterar o PT divergiria da fonte (guarda-rail «a partir do inglês»). É defeito *upstream* de token — reportar ao projeto OLP, não como erro de tradução. *(A parte §12.11 de C12-03 foi aplicada — ver `downward-ls.tex`.)*

## Falsos positivos respeitados (não alterados)
«outros sequentes» (=EN), «Teoremas 10.25 e 11.25 se aplica» (=EN), nomes de regra (¬L, ∧R, →Intro…), «variável própria», `\Discharge`/`\DischargeRule` (macros de prooftree), «modus ponens».

## Recomendação de processo
Recompilar o PDF e reverificar C10-03 e C12-03(§12.1). As correções de concordância via `!!{tok}s` dependem da definição de plural no config em vigor.
