# Diário de sessão 01 — Finalização da tradução do SLC

**Data:** 2026-07-10
**Objetivo da sessão:** executar o plano [finalizar_tradução_slc](../../.cursor/plans/finalizar_tradução_slc_19e3439f.plan.md) — tornar o PDF PT do curso *Sets, Logic, and Computation* uma tradução fiel e completa do inglês, sem inglês residual nem mistraduções, documentando tudo para o Richard.

Este diário é cronológico: **o que penso fazer → o que faço → o que fiz → decisões e porquê.**

---

## Contexto herdado

- O livro foi migrado para o framework do Richard (ver [04-migracao-slc-framework-openlogic](../04-migracao-slc-framework-openlogic.md)): PT compila com **457 páginas**, 0 avisos de localização, 0 erros.
- Existe um audit qualitativo anterior ([03-comparacao-qualidade](../03-comparacao-qualidade-traducao-en-pt.md)) feito sobre o **build antigo** (`OpenLogic-traduzido`, 452 pp). Serve de **checklist a revalidar**, não de lista de tarefas ativas, porque a migração já resolveu vários problemas de infraestrutura.

## Fontes de verdade desta fase

| Papel | Caminho | Páginas |
|-------|---------|---------|
| EN (referência) | `OpenLogic-original/courses/sets-logic-computation/slc-screen.pdf` | 430 |
| PT (a corrigir) | `OpenLogic/locale/pt/courses/sets-logic-computation-pt/slc-screen.pdf` | 457 |
| Conteúdo a editar | `OpenLogic/locale/pt/content/**` (local, não commitado) | — |

---

## Fase 0 — Base e ferramentas

### O que pensei fazer
Confirmar os dois PDFs, apontar o extractor de texto por capítulo ao build novo, re-extrair EN+PT e montar a estrutura de relatórios.

### O que fiz
1. Confirmei os PDFs: EN 430 pp, PT 457 pp (via `pdfinfo`).
2. Adaptei [scripts/extrair_pdf_por_capitulo.py](../../scripts/extrair_pdf_por_capitulo.py):
   - `PT_PDF` agora aponta ao build novo (`ROOT.parent/OpenLogic/locale/pt/...`), fora do workspace.
   - Adicionei helper `_rel()` para o índice tolerar caminhos fora do `ROOT`.
3. Re-extraí: **20 capítulos EN + 20 PT** para `verificacao/comparacao-pdf/`, com `INDICE.md` atualizado (PT = build novo). Alinhamento de títulos EN↔PT confirmado (Prefácio, 1–15, Ap. A–D).
4. Abri esta estrutura de relatórios em `relatorios/finalizacao-slc/`.

### Decisões e porquê
- **EN de referência = `OpenLogic-original` (430 pp).** É exatamente o inglês de que o Pedro partiu; assim, qualquer diferença de conteúdo EN↔PT é problema de tradução puro, não de versão.
- **Re-extrair sobrescreve os `.txt` PT antigos.** Correto: a partir de agora a única verdade PT é o build novo.

### Estado
Fase 0 concluída.

---

## Fase 1 — Scans automáticos (linha de base)

### O que fiz
Escrevi [scripts/scan_baseline_slc.py](../../scripts/scan_baseline_slc.py) e corri um conjunto de scans (tokens, inglês residual por ficheiro e por capítulo do PDF, completude estrutural, divergência EN, glossário, conflitos de config). Resultado completo em [01-baseline-scans.md](01-baseline-scans.md).

### O que descobri (resumo)
- **0 tokens corrompidos**; **0 divergência real** com o inglês (só 1 espaço em branco).
- Inglês residual real e visível no PDF em **apenas 2 focos**: cap. 5 (`substitution.tex`) e cap. 11 (`provability-propositional.tex`, título de secção + frase meio-traduzida). Todos os outros capítulos: 0.
- Estruturalmente completo: PT = EN + um capítulo Glossário. Nada em falta.
- 27 avisos `glo:` são hyperlinks cosméticos do glossário (todas as entradas existem); + 1 bug de plural ("variáveiss").
- 3 conflitos reais de token entre `open-logic-config.sty` e `slc-config.sty` (`bijection` grafia pt-PT, `enumerable` com linha `{countable}` em inglês, `derive` plural).

### Decisão importante
Os scans dizem "quase limpo", mas **não detetam mistraduções nem PT artificial**. Logo, o verdadeiro trabalho de qualidade depende da **auditoria semântica** (Fase 2). Não vou assumir que "está bom" só porque os scans passam.

### Estado
Fase 1 concluída.

---

## Fase 2 — Auditoria semântica por capítulo (4 subagentes)

### O que fiz
Lancei 4 subagentes (um por bloco: caps 0–4, 5–8, 9–12, 13–15+ap), cada um a comparar EN↔PT no PDF+fonte, a validar o audit antigo e a escrever o seu relatório ([audit-cap-00-04](audit-cap-00-04.md), [05-08](audit-cap-05-08.md), [09-12](audit-cap-09-12.md), [13-15+ap](audit-cap-13-15-apendices.md)). Consolidei tudo em [02-lista-mestre.md](02-lista-mestre.md).

Nota de processo: a 1.ª tentativa (4 subagentes em foreground) foi interrompida e nenhum relatório ficou gravado; relancei em background e os 4 completaram.

### O que descobri (143 achados: 11 CRÍT / 51 GRAVE / 64 MENOR / 17 ESTILO)
- **Focos críticos:** §13.1 e §13.7 (`beyond/`, prosa de tradução automática corrompida), §14.9 (`variants.tex`, inglês residual), §5.7 (`substitution.tex`), §11.9 (`provability-propositional.tex` da dedução natural, quase toda em inglês), rótulo `\TAss`="Assumption" no tableau.
- **Achado novo importante:** 5 das 9 biografias (Ap. C) estão em **português europeu** (o audit antigo não apanhou).
- **Regressão:** o cap. 4 não recebeu as correções que o cap. 3 recebeu (ordem "sobrejetora função", plural "contável", "um um elemento").
- **Causas-raiz mecânicas:** token `derive/complete/discharge` sem infinitivo/género; artigo manual duplicado antes de `!!a{}`; "O.s." (abreviatura manual de "ou seja", ~dezenas); tokens compostos quebrados ("estruturaar", "fórmulada").

### Decisão
Organizei os 143 achados por **causa-raiz** (12 grupos), não por capítulo — assim uma correção resolve muitas ocorrências. Terminologia a fixar: consequência, equinumeroso, emparelhamento, matriz, mereologia.

### Estado
Fase 2 concluída.

---

## Fase 3 — Config e decisões de terminologia

### O que fiz (ver [decisoes-terminologia-config.md](decisoes-terminologia-config.md))
- `slc-config.sty`: `bijecção`→`bijeção`; `metalogica`→`metalógica`; adicionei `\DeclareDocumentMacro \TAss {Hipótese}` (rótulo de tableau que saía "Assumption").
- `include/glossary.tex`: `plural={atribuições de variáveis}` (evita "variáveiss").
- `include/preface.tex`: literal «Metalogica»→«Metalógica» e "tópicos como como"→"tópicos como o de".
- Fixei a política de terminologia (consequência, equinumeroso, emparelhamento, matriz, mereologia, "isto é").

### Verificação (rebuild de checkpoint)
Rebuild OK, 457 pp. No PDF: **"Assumption"=0**, `Hipótese`/`bijeção` presentes, "Metalogica" resolvido. As 27 refs `glo:` mantêm-se (cosméticas; decisão: não bloquear).

### Estado
Fase 3 concluída.

---

## Fase 4 — Correções de prosa (em curso)

### Abordagem
Dada a escala (143 achados, 20 capítulos, 5 secções a retraduzir), paralelizei por bloco em pastas **disjuntas** (sem risco de conflito de edição), cada subagente a aplicar as correções do seu relatório de auditoria a partir do **inglês** como verdade, com guarda-rails de LaTeX/tokens/matemática:
- Bloco A: `content/sets-functions-relations/{sets,relations,functions,size-of-sets}`
- Bloco B: `content/first-order-logic/{introduction,syntax-and-semantics,models-theories}` (inclui retradução da §5.7)
- Bloco C: `content/first-order-logic/{proof-systems,sequent-calculus,natural-deduction,completeness}` (inclui tradução da §11.9 com molde do sequentes)
- Bloco D: `content/first-order-logic/beyond` + `turing-machines` + `methods` + `history/biographies` + `reference` (retradução §13.1/§13.7/§14.9; biografias pt-PT→pt-BR)

Eu (parent) tratei dos `include/`: `preface.tex` (Metalógica, "como como") e `summary-4.tex` (zigue-zague).

Cada subagente escreve um `fix-log-<bloco>.md`. Depois: rebuild + re-scan + re-auditoria (Fase 5).

### O que fizeram (4 logs: fix-log-caps-*.md)
Os 4 subagentes editaram ~81 ficheiros `.tex` de conteúdo, corrigindo a partir do inglês: retraduziram §5.7, §11.9, §13.1, §13.7, §14.9; uniformizaram as 5 biografias para pt-BR; aplicaram O.s.→"isto é", ordem de função, tokens `derive`/`complete`, artigos duplicados, `\Entails`→"consequência", concordâncias e contrações.

### Estado
Fase 4 concluída.

---

## Fase 5 — Rebuild + verificação

### O que fiz
- **Rebuild** após todas as correções: 457 pp, 0 erros fatais, 0 "not marked pt".
- **Residuais** que os subagentes deixaram: corrigi "LK derivam"→"LK deriva" (`!!{derive}s`→`!!{derive}` em 4 ficheiros de sequentes); adicionei `\crefname{prob}` minúsculo (o versalete "PROBLEMA" é estilo do OLP, fica documentado).
- **Re-extração + re-scans:** 0 capítulos com inglês residual; 0 tokens corrompidos; confirmei a eliminação dos marcadores de corrupção ("há existem", "estruturaar", "a completo conjunto", "sobrejetora função", "non-deterministic", "Polónia", …).
- **Spot-check de qualidade:** §13.1 e biografias lêem-se como pt-BR fluente.
- Escrevi o [RELATORIO-FINAL.md](RELATORIO-FINAL.md).

### Estado
Fase 5 concluída. Sessão 1 terminada: os 11 CRÍTICOS resolvidos, GRAVES e a maioria dos MENORES resolvidos; fica registo completo do pipeline. Por fazer (não bloqueia): registo pt-PT no corpo dos caps. 1–4 (ESTILO), editorial de instrutor (não sai no PDF), e o versalete cosmético "PROBLEMA".
