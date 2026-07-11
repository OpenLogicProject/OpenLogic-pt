# Correções de produção — gitinfo2 (créditos) e capa PT

**Data:** 2026-07-10. Detalhes de build (não de tradução) visíveis no PDF que o Richard verifica.

## 1. Página de créditos: `(None) ((None))` / `revisão unknown`

### Diagnóstico
A linha de créditos (`include/olp-frontmatter-pt.tex`) usa:
- `\gitAbbrevHash{}` e `\gitAuthorDate` — do pacote **gitinfo2**;
- `\OLPrevision{}` — definido em `open-logic-book.cls` (L318-322): lê `olprevision.tex` se existir, senão `unknown (\today)`.

Faltavam os dois insumos:
- **`.git/gitHeadInfo.gin`** não existia em nenhum repo → gitinfo2 usa o default `(None)` (é o valor `missing` em `gitinfo2.sty` L36).
- **`olprevision.tex`** não existia → `\OLPrevision` = "unknown".

O `gitinfo2` procura `gitHeadInfo.gin` subindo a árvore até `maxdepth=4`. Da pasta de cada curso, encontra `locale/pt/.git` (2 níveis acima). Logo, **basta gerar `locale/pt/.git/gitHeadInfo.gin`** e ambos os livros (SLC e Set Theory) o encontram. `\OLPrevision` vem do mesmo gin, via `misc/makeolprevision`.

### O que fiz (SLC + Set Theory)
1. **Gerei `locale/pt/.git/gitHeadInfo.gin`** (revisão 68a8bd0, 2026-07-08) com o comando do hook do gitinfo2.
2. **Instalei os hooks** `post-commit`/`post-checkout`/`post-merge` em `locale/pt/.git/hooks` (conteúdo do `post-xxx-sample.txt` do gitinfo2) — testados: regeneram o gin. Assim, após commits reais, o gin atualiza-se sozinho.
3. **Criei `olprevision.tex`** (`\setOLPrevision{68a8bd0 (2026-07-08)}`) em ambos os cursos (é o que o `makeolprevision` produz a partir do gin de `locale/pt`).
4. **Corrigi o Makefile do SLC**: o alvo `olprevision.tex` usava caminhos do workspace antigo (`../../misc/... ../..`) → agora `../../../../misc/makeolprevision ../../` (igual ao Set Theory).

### Resultado
Créditos SLC: "Esta versão de Conjuntos, Lógica, Computação é a revisão **68a8bd0 (2026-07-08)**, com conteúdo gerado a partir da revisão **68a8bd0 (2026-07-08)** do Open Logic Text." Set Theory idem. **0 `(None)`, 0 `unknown`.** O parêntese duplo `((None))` desapareceu (era artefacto do default `(None)` já trazer parênteses).

## 2. Capa PT: retrato de baixo cortado

### Diagnóstico
Página = 360×576 pt = **5×8 in**. Em `open-logic-book.cls` (`\OLPscreencover`), a faixa ilustrada é um `textblock*` em `(0in, 3.5in)` com `\vbox to 4.5in` → ocupa 3.5in a **8.0in** (o fundo exacto): no EN todos os retratos cabem.

O título PT "Conjuntos, Lógica, Computação" ocupa **3 linhas** (o EN "Sets, Logic, Computation" ocupa 2), porque as palavras são mais longas. Um ajuste anterior (`cover-pt-fix.tex`) compensava **descendo a faixa** para 4.25in — mas aí a arte ia de 4.25in a 8.75in, e como a página só tem 8.0in, o **retrato de baixo (Noether) ficava cortado**.

### O que fiz
Reescrevi `include/cover-pt-fix.tex`: a faixa **fica em 3.5in** (como no EN → chega ao fundo, nenhum retrato cortado) e, em vez disso, reduzo o que empurra a arte para baixo:
- `\OLPtitlecoverfont`: 65pt → **48pt** (as 3 linhas PT passam a ocupar altura ≈ 2 linhas EN);
- `\OLPsubtitlecoverfont`: 25pt → **22pt**;
- `\vspace*` do topo 1.7cm → 0.6cm e do intervalo título–subtítulo 1cm → 0.4cm (via `\patchcmd`).
Assim o bloco título+subtítulo cabe acima de 3.5in sem invadir a faixa.

### Resultado
Capa PT: faixa laranja de 3.5in ao fundo, **5 retratos inteiros**, subtítulo sem sobreposição. (Afeta `slc-screen` e `slc-print`, que ambos fazem `\input{include/cover-pt-fix}`.)

## 3. Capa KDP (`slc-print-cover.tex`): verso com título+autor colados + erro de build

### Diagnóstico
`\OLPprintcover` (verso) chama `\ollicensetext{\OLPbooktitle}{\OLPauthor}...`. O driver `slc-print-cover.tex` **não carregava o locale PT** (faltavam `\ollangid`, `\ollanguage`, `\input{open-logic.sty}`), ao contrário do driver do Set Theory. Sem o locale, `\ollicensetext` fica **indefinido** → erro "Undefined control sequence" e os argumentos (título e autor) saíam crus e colados: "Computação**Richard** Zach".

### O que fiz
Adicionei ao `slc-print-cover.tex` o preâmbulo de locale (igual ao `settheory-print-cover.tex` do Richard). Resultado: 0 erros; o verso mostra a licença Creative Commons correcta em PT.

---

**Nota:** tudo local; nenhum commit aos repos do OpenLogic. O gin/olprevision mostram a revisão base (68a8bd0); após o Pedro commitar, os hooks atualizam o gin para o novo commit automaticamente.
