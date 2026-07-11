# Auditoria qualitativa EN ↔ PT — Caps. 13–15 e Apêndices A–C (SLC)

**Data:** 2026-07-01  
**Auditor:** subagente (análise manual)  
**Fontes:** PDF extraído (`verificacao/comparacao-pdf/*-{en,pt}.txt`), LaTeX original/traduzido, relatórios por seção em `relatorios/sec-*.md`

---

## Metodologia

Comparação **semântica** (não linha-a-linha) entre pares EN/PT do PDF compilado, cruzada com leitura dos `.tex` fonte. Critérios de severidade conforme `relatorios/comparacao-qualidade/README.md`:

| Severidade | Critério |
|------------|----------|
| **CRÍTICO** | Erro de sentido, token corrompido, matemática errada, `\ref` quebrado |
| **GRAVE** | Inglês residual visível, omissão, terminologia errada, artigo duplicado por token |
| **MENOR** | Typo, registro inadequado, calco ingênuo |
| **ESTILO** | Preferência de redação (não bloqueia publicação) |
| **FALSO_POSITIVO** | Nome próprio, título de obra, citação bibliográfica, artefato de extração PDF |

**Nota:** o PT ocupa mais páginas (452 vs 430); diferenças de quebra de linha no `.txt` extraído não indicam omissão.

**Escopo retraduzido (prioridade):** cap. 14, cap. 15, ap. A, ap. B, ap. C. O cap. 13 **não** entrou na rodada recente e permanece o ponto mais fraco do bloco.

---

## Resumo executivo

| Bloco | Nota global | Comentário |
|-------|-------------|------------|
| **Cap. 13** — Além da FOL | **Insuficiente** | §13.1 e editorial corrompidos; artigos duplicados com tokens `!!a{...}`; §13.7 com calcos |
| **Cap. 14** — Máquinas de Turing | **Bom** | Retradução sólida em quase todas as seções; §14.9 com resíduos EN e gramática fraca |
| **Cap. 15** — Indecidibilidade | **Muito bom** | Retradução fiel, terminologia estável, provas legíveis |
| **Ap. A** — Provas | **Muito bom** | Tom pedagógico preservado; adaptação “em português” coerente |
| **Ap. B** — Indução | **Muito bom** | Exemplos (dados, termos bonitos) bem localizados |
| **Ap. C** — Biografias | **Bom** | 9 entradas do curso traduzidas; títulos EN em bibliografia mantidos (correto) |
| **Glossário** (`glossary.tex`) | **Bom** (fora do PDF de capítulo) | Conforme `relatorios/backmatter-glossario.md`; não reauditado linha a linha aqui |

**Veredicto:** caps. 14–15 e apêndices A–C estão **publicáveis com revisão pontual** (principalmente `variants.tex`). O cap. 13 exige **revisão estrutural** antes de ser considerado no mesmo patamar.

---

## Capítulo 13 — Além da lógica de primeira ordem

**LaTeX:** `content/first-order-logic/beyond/`  
**PDF:** pp. 276–298 (EN) / 288–312 (PT)

### Pontos positivos

- **§13.3–13.6** (segunda ordem, ordem superior, intuicionista, modal): conteúdo matemático preservado; terminologia alinhada ao restante do curso (domínio, estrutura, completude, semântica plena/fraca).
- **§13.2** (múltiplas ordenações): argumento e exemplo internacional traduzidos corretamente no plano semântico; tokens `!!{domain}`, `!!{sentence}` intactos.
- Predicados de exemplo (`German`, `French`, `MarriedTo`) mantidos em inglês — **FALSO_POSITIVO** (símbolos formais).

### Achados

#### CRÍTICO — `introduction.tex` (§13.1)

Prosa com **corrupção de tradução automática**: duplicações, concordância quebrada, frases truncadas. Exemplos no fonte:

```13:48:OpenLogic-traduzido/content/first-order-logic/beyond/introduction.tex
A lógica de primeira ordem não é o único sistema de lógica de interesse: há
existem muitas extensões ...
... o que as lógicas que não são lógicas de primeira ordem têm
tem a ver com a palavra “lógica” ...
senso? Todos os sistemas ...
... como a de
A “verdade” tem sido analisada ...
Para
Por exemplo, pode-se considerar ...
verdadeiras, verdadeiras a priori, verdadeiro independente ...
Mesmo que um
restringe a atenção ...
iniciado por Frege ...
axioma da redutibilidade ...
não não admitem “proposições” ...
puramente lógicas.
... para um momento chuvoso.
dia, e simplesmente pense ...
```

O PDF (p. 288–289) reproduz fielmente esses defeitos — não é artefato de extração.

**Correções sugeridas (amostra):**

| Trecho atual | Proposta |
|--------------|----------|
| há existem | há |
| têm tem a ver | têm a ver |
| um semântica pretendida | uma semântica intencional |
| ... filosófico. senso? | ... filosófico? |
| de A “verdade” | de “verdade” |
| Para Por exemplo | Por exemplo |
| verdadeiro independente | verdadeiras independentes |
| Mesmo que um restringe | Mesmo restringindo |
| iniciado por Frege | iniciada por Frege |
| redutibilidade | redutibilidade |
| não não admitem | não admite |
| puramente lógicas | puramente lógicos |
| momento chuvoso. dia | dia chuvoso |

#### GRAVE — artigo duplicado com `!!a{domain}` (§13.2, §13.3)

Em `slc-config.sty`, `\definetoken{a}{domain}{um}` faz `!!a{domain}` → «um domínio». O texto traduzido repete o artigo:

- `many-sorted-logic.tex` L15–17: `um !!a{domain} de números` → PDF «um um domínio»
- `second-order-logic.tex` L14: `sobre um !!a{domain} de indivíduos` → «sobre um um domínio»

**Correção:** remover `um`/`uma` antes de `!!a{...}` quando o token já inclui artigo (`!!a{domain}`, `!!a{formula}`, `!!a{structure}`, etc.).

#### GRAVE — `beyond.tex` (editorial do capítulo)

```10:15:OpenLogic-traduzido/content/first-order-logic/beyond/beyond.tex
\begin{editorial}Este capítulo ... fornece a
  o mais breve vislumbre ... em um
  claro que não os cobre.  Cada um dos temas mencionados
  aqui irá --- espero --- eventualmente receber seu próprio nível parcial
  tratamento no Projeto Open Logic.\end{editorial}
```

«a o», «um claro» (por «curso»), «nível parcial tratamento» — corrupção clara.

#### MENOR — `other-logics.tex` (§13.7)

- «crie uma semântica» (imperativo solto após infinitivos)
- «diversão limpa» (calco de *clean fun*)
- «modelo de raciocínio» onde o original usa *model* como verbo → «modelar raciocínio»
- «Lógicas ``deônticas''» — capitalização inconsistente

#### ESTILO — «semântica pretendida» (`introduction.tex`, `modal-logics.tex`)

Calco de *intended semantics*; preferível **semântica intencional** em contexto técnico.

---

## Capítulo 14 — Computações de Máquinas de Turing

**LaTeX:** `content/turing-machines/machines-computations/`  
**PDF:** pp. 299–326 (EN) / 313–342 (PT)  
**Status:** retraduzido (relatórios `sec-14.1` … `sec-14.10`)

### Pontos positivos

- **§14.1–14.8, 14.10:** leitura fluida; «computável», «parada», «configuração», «máquina dos pares/par», «tese de Church–Turing» consistentes.
- Definições, teoremas e trace de configurações preservam estrutura EN; `\text{...}` traduzido onde relevante (`halting-problem` não está neste capítulo).
- Diagramas TikZ: rótulos `start`, `I`, `⊔` — **FALSO_POSITIVO** (notação universal).
- **§14.7** corrige o «section section» do original EN (`disciplined-machines.tex`).

### Achados

#### GRAVE — `variants.tex` (§14.9)

Inglês residual e gramática incompleta:

```33:38:OpenLogic-traduzido/content/turing-machines/machines-computations/variants.tex
... $\tuple{q,
\sigma}$ and new state-symbol-direction triples $\tuple{q', \sigma',
D}$, ...
... $\tuple{q,
\sigma, q', \sigma', D}$ and $\tuple{q, \sigma, q'', \sigma'', D'}$.
Neste caso temos uma máquina de Turing \emph{non-deterministic}.
```

Também na nota de rodapé (L56–59):

- `\emph{quite}` não traduzido → PDF «Isso não quite trabalho»
- «Pudermos contorne» → «Podemos contornar»
- «definimos» (L51) após «poderíamos» — infinitivo quebrado

#### MENOR — `variants.tex` (§14.9)

- Frases nominais truncadas («uma forma mais restrita definição», «Permitimos ... e mover-se», «outras formas» solto).
- «Turing computável de acordo com» (L68–70): calco; preferível «computável por máquina de Turing segundo…».
- «Máquinas de Turing podem calcular» (L46): concordância de capitalização no meio da frase.

#### FALSO_POSITIVO

- Título do artigo de Turing «On computable numbers» (§14.1) — citação.
- Símbolos `I`, `start` nos diagramas de estado.

---

## Capítulo 15 — Indecidibilidade

**LaTeX:** `content/turing-machines/undecidability/`  
**PDF:** pp. 327–359 (EN) / 343–377 (PT)  
**Status:** retraduzido (relatórios `sec-15.1` … `sec-15.9`)

### Pontos positivos

- Narrativa do capítulo (computabilidade intuitiva → enumeração → parada → codificação aritmética → problema da decisão → Trakhtenbrot) **coerente e completa**.
- Terminologia estável: «incomputável», «indecidível», «insolúvel», «problema da parada/decisão», «Teorema de Church–Turing», «semi-decidível».
- **§15.4** (parada): prova por diagonalização legível; `\text{...}` em português.
- **§15.6–15.7** (representação/verificação): notação pesada mas fiel; lemas numerados corretamente.
- **§15.9** (Trakhtenbrot): argumento de modelos finitos bem conduzido.

### Achados

#### FALSO_POSITIVO

- Referências `\olref` que compilam como «section 15.6» no PDF — formato do sistema Open Logic, não prosa traduzida (`trakhtenbrot.tex` usa `\olref[rep]{sec}` corretamente).
- Comentários `%` em inglês em `trakhtenbrot.tex` — não aparecem no PDF.

#### ESTILO

- «pode é claro ser usada» (§15.1 PDF) — provável quebra de linha; fonte: «pode, é claro, ser usada».
- Alternância «Turing-incomputável» / «Turing-computável» com hífen — aceitável e uniforme no capítulo.

**Nenhum achado CRÍTICO ou GRAVE** identificado na retradução do cap. 15.

---

## Apêndice A — Provas

**LaTeX:** `content/methods/proofs/`  
**PDF:** pp. 360–389 (EN) / 378–408 (PT)  
**Status:** retraduzido (`sec-A.1` … `sec-A.10`)

### Pontos positivos

- Adaptação explícita «feita em português» (§A.1) — adequada ao livro traduzido.
- Meta-prova comentada (§A.5, §A.6): voz didática mantida; definiendum/definiens traduzidos.
- Padrões de inferência (§A.4), contradição (§A.7), leitura de provas (§A.8): terminologia alinhada (hipótese, consequente, descarga).
- `\text{ and }` → `\text{ e }` onde aplicável.

### Achados

#### FALSO_POSITIVO

- Títulos de livros em inglês em `resources.tex` (*How to Prove It*, etc.).
- `methods.tex` (parte) ainda em inglês — **não entra no PDF do apêndice** (comentário de estrutura).

#### ESTILO

- «rodapé de uma folha» (§A.2) por «final/fundo da folha» — preferência menor.
- Teoremas nomeados «Teorema de Cantor» vs «teorema de Löwenheim–Skolem» — inconsistência de capitalização (**ESTILO**).

**Nenhum achado CRÍTICO ou GRAVE.**

---

## Apêndice B — Indução

**LaTeX:** `content/methods/induction/`  
**PDF:** pp. 390–404 (EN) / 409–424 (PT)  
**Status:** retraduzido (`sec-B.1` … `sec-B.6`)

### Pontos positivos

- Distinção indução simples / indução matemática / estrutural clara (§B.1).
- Exemplo dos dados (Teorema B.1): enunciado e prova completos; «hipótese indutiva» consistente.
- Termos bonitos (§B.4–B.6): indução forte e estrutural bem localizados; símbolos `[`, `]`, `◦` preservados.

### Achados

#### FALSO_POSITIVO

- Quebra «k +1 / a tem» no PDF (p. 409) — artefato de extração; fonte: «também k+1 tem».

#### ESTILO

- «De modo bem aproximado» (§B.1) — calco de *Very roughly*; alternativa: «De modo geral» ou «De forma grosseira».

**Nenhum achado CRÍTICO ou GRAVE.**

---

## Apêndice C — Biografias

**LaTeX:** `content/history/biographies/` (9 ficheiros no `slc.tex`)  
**PDF:** pp. 405–419 (EN) / 425–440 (PT)  
**Status:** retraduzido (`sec-C-*`)

**Incluídas no curso SLC:** Cantor, Church, Gentzen, Gödel, Noether, Russell, Tarski, Turing, Zermelo.

**Fora do PDF SLC:** `rozsa-peter.tex`, `julia-robinson.tex` (ainda em inglês no repositório — **fora de escopo** desta auditoria).

### Pontos positivos

- Prosa biográfica natural; datas e locais localizados (São Petersburgo, sanatório em Halle, etc.).
- Secções «Leitura adicional» / *Further Reading* traduzidas; títulos de obras e programas BBC mantidos em inglês (**FALSO_POSITIVO**).
- Gentzen: tradução do título alemão entre colchetes; contexto histórico (nazismo, Praga) sensível e clara.

### Achados

#### FALSO_POSITIVO

- Nomes próprios, títulos (*Breaking the Code*, *A Brief History of Mathematics*), *Institute for Advanced Study*.
- Pronúncia «gay-org kahn-tor» (Cantor) — herdada do original.

#### ESTILO

- Figura de Church deslocada no PDF (texto antes da foto) — layout LaTeX, não tradução.
- «grave indecência» (Turing) — termo jurídico histórico britânico; aceitável.

**Nenhum achado CRÍTICO ou GRAVE** nas nove biografias do curso.

---

## Glossário (`courses/sets-logic-computation/include/glossary.tex`)

Não faz parte dos caps. 13–15 nem dos apêndices, mas é backmatter do SLC. Segundo `relatorios/backmatter-glossario.md`, está traduzido com terminologia alinhada a `slc-config.sty`. **Não foram encontradas inconsistências** com os caps. 14–15 auditados (ex.: «correção», «completude», «derivável», «indecidível»).

---

## Tabela consolidada de achados (ação requerida)

| Sev. | Local | Descrição |
|------|-------|-----------|
| CRÍTICO | `beyond/introduction.tex` | §13.1: prosa corrompida (duplicações, frases quebradas) |
| CRÍTICO | `beyond/beyond.tex` | Editorial do capítulo corrompido |
| GRAVE | `beyond/many-sorted-logic.tex`, `second-order-logic.tex` | `um !!a{domain}` → «um um domínio» |
| GRAVE | `machines-computations/variants.tex` | Inglês residual (`and`, `non-deterministic`, `quite`); nota de rodapé gramaticalmente errada |
| MENOR | `beyond/other-logics.tex` | §13.7: calcos e imperativo «crie» |
| MENOR | `variants.tex` | Frases truncadas, «Turing computável de acordo com» |
| ESTILO | vários (cap. 13) | «semântica pretendida» → «intencional» |

---

## Recomendações prioritárias

1. **Cap. 13 — reparo urgente:** retraduzir `introduction.tex` e `beyond.tex` a partir do EN original (não patch superficial); revisar todo `beyond/` para `um/uma` antes de `!!a{...}`.
2. **Cap. 14 — §14.9:** corrigir `variants.tex` (bloco L33–38, nota de rodapé L56–59, frases nominais L14–20).
3. **Caps. 14–15 + Ap. A–C:** nenhuma retradução global necessária; passagem de correção fina suficiente.
4. **Verificação pós-correção:** recompilar PDF e diff semântico das páginas afetadas (cap. 13 e §14.9).
5. **Peter / Robinson:** traduzir apenas se forem incluídas numa edição futura do SLC.

---

## Conclusão

A **retradução recente dos caps. 14–15 e dos apêndices A–C** atinge qualidade **boa a muito boa**: fidelidade matemática, terminologia estável e tom pedagógico preservado. O **cap. 13 permanece desalinhado** — especialmente §13.1 — e concentra os únicos problemas **CRÍTICOS** do bloco. Com reparo do cap. 13 e polimento de `variants.tex`, o trecho 13–15 + apêndices estará em condições de publicação consistentes com o restante do curso SLC.
