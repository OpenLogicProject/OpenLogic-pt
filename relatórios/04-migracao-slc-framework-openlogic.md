# Migração do SLC para o framework OpenLogic (localização pt)

_Estado em 2026-07-10. Estratégia escolhida: **A — reaproveitar a tradução existente + passagem de revisão** (não retraduzir do zero)._

---

## 1. Resumo executivo

| Pergunta | Resposta |
|---|---|
| A Teoria de Conjuntos já está integrada no framework do Richard? | **SIM.** `settheory-screen.pdf` compila em PT com 297 páginas, sem erros. |
| O livro SLC (Conjuntos, Lógica e Computação) já se integra no framework? | **SIM, agora sim.** `slc-screen.pdf` compila em PT com **457 páginas** (igual ao livro antigo), **0 avisos "not marked pt"**, 0 erros fatais. |
| Foi preciso retraduzir? | **Não.** Reaproveitou-se 100% da tradução existente. |

O problema original (build só com 121 páginas) **não era de tradução** — era mecânico:
o framework salta (`\OLUnLocalizedHook` → `\endinput`) qualquer ficheiro cujo
`\olfileid` não tenha o marcador `[pt]` quando se compila com `\ollangid=pt`.
A tua tradução estava completa, mas os ficheiros estavam noutro sítio e sem o marcador.

## 2. O que foi feito (migração)

Tudo foi feito **localmente e sem commits** nos repositórios do OpenLogic, portanto é
100% reversível (`git checkout` em `locale/pt`).

1. **Conteúdo (leaves) — 130 ficheiros + 1 caso especial**
   - Copiados de `OpenLogic-traduzido/content/` para `OpenLogic/locale/pt/content/`.
   - Acrescentado `[pt]` ao `\olfileid` de cada um.
   - Caso especial: `first-order-logic/sequent-calculus/propositional-rules.tex`
     (ficheiro técnico sem diacríticos; marcados os dois `\olfileid` de `\iftag`).
2. **Títulos de capítulo/parte (aggregators) — 9 ficheiros**
   - Migrados usando o inglês do repo principal como referência, para nunca
     sobrepor títulos que o Richard já traduziu (ex.: Biografias, Aritmetização).
   - Corrigidos: Sintaxe, Semântica, Sintaxe e Semântica, Teorias e Seus Modelos,
     O Teorema da Completude, Máquinas de Turing, Indecidibilidade, Provas,
     O Alfabeto Grego.
3. **Página "Sobre o Open Logic Project"**
   - `slc.tex`: `\olimport*{\olpath/content/open-logic-about}` →
     `\olimport*[]{open-logic-about}` (usa a versão localizada PT).

**Pegada total:** 152 ficheiros modificados em `locale/pt/content`
(FOL 94, turing 22, methods 18, sfr 12, history 4, reference 1, about 1).

**Regra de segurança aplicada:** nunca se tocou em ficheiros já marcados `[pt]`
(trabalho já integrado pelo Richard) nem se copiou inglês antigo por cima de
inglês/PT atual (filtro por conteúdo PT + verdade-inglesa de referência).

Scripts reproduzíveis (em `scripts/`):
- `migrar_conteudo_pt_para_locale.ps1` (leaves + marcador `[pt]`)
- `migrar_aggregators_pt.ps1` (títulos de capítulo/parte)
- Manifesto: `scripts/_migracao_manifesto.txt`

## 3. Verificação

- Índice (`.toc`) confirmado: Partes I–III e Capítulos 1–15 + apêndices todos em PT.
- Conteúdo FOL, Turing e Métodos a renderizar em português (com a matemática intacta).
- Integridade da Teoria de Conjuntos e da Categoria B (Biografias, Aritmetização,
  Conjuntos Infinitos, História e Mitologia) preservada.

---

## 4. Plano separado de FINALIZAÇÃO (correção/polimento)

> Esta é a fase seguinte, à parte. A tradução, como referiste, ainda "não está
> perfeita" — o que se segue não bloqueia a integração, mas fica para acabar o livro.

### 4.1. Referências de glossário por resolver (prioridade: média)
- 27 referências `glo:` não resolvidas (ex.: `glo:valid`, `glo:undischarged`,
  `glo:Church-Turing Theorem`, `glo:anti-symmetric`).
- Causa provável: termos de glossário referenciados no texto PT mas não definidos
  na lista de termos localizada. Reconciliar `include/glossario-termos` /
  glossário de `locale/pt`.

### 4.2. Divergência com o inglês atual (prioridade: alta para fidelidade)
- A tua base em inglês pode ser mais antiga que o `master` atual do OpenLogic.
- Fazer diff, ficheiro a ficheiro, entre `OpenLogic/content/…` (inglês atual) e a
  tua versão PT, para apanhar secções novas/alteradas pelo OLP desde o teu fork.
- (O Richard mencionou isto no email — há scripts do lado dele para ajudar.)

### 4.3. Revisão de qualidade da tradução (prioridade: alta — é o grosso do trabalho)
- Passagem de revisão pelos ~145 ficheiros migrados (fluência, terminologia,
  consistência com a Teoria de Conjuntos já revista).
- Reaproveitar os relatórios em `relatorios/comparacao-qualidade/`.
- Convenções de maiúsculas em títulos (ex.: Cap. 13 "Além da lógica de primeira
  ordem" → normalizar capitalização).

### 4.4. Builds de entrega (prioridade: baixa, no fim)
- Além do `slc-screen`, gerar e verificar `slc-print` e a capa.
- Confirmar tokens/config (`slc-config.sty`) no contexto do framework.

### 4.5. Publicação (decisão do Pedro)
- Quando estiveres satisfeito, o Richard torna os repositórios públicos.
- Só então se decide commitar as alterações de `locale/pt` (hoje estão locais).
