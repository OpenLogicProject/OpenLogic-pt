# Decisões de terminologia e config (SLC)

**Data:** 2026-07-10. Registo de cada escolha, para o Richard poder auditar o critério.

## Alterações de configuração aplicadas (Fase 3)

Todas em `OpenLogic/locale/pt/courses/sets-logic-computation-pt/` (local, não commitado).

| # | Ficheiro | Antes | Depois | Porquê |
|---|----------|-------|--------|--------|
| 1 | `slc-config.sty` L119 | `\settexttoken{bijection}{bijecção}{bijecções}` | `{bijeção}{bijeções}` | Grafia pt-PT → pt-BR. Alinha com `injeção`/`sobrejeção` (mesmo ficheiro) e com o config-locale do Richard. Corrige A03-03, A04-10, D13-23. |
| 2 | `slc-config.sty` L342 | `\settexttoken{metalogic}{metalogica}{metalogicas}` | `{metalógica}{metalógicas}` | Faltava acento (aparecia "Metalogica" no PDF/Prefácio). Corrige A00-01. |
| 3 | `slc-config.sty` (após `\TMstroke`) | (herdava `\TAss`=`Assumption` de `open-logic-config.sty` L302) | `\DeclareDocumentMacro \TAss {Hipótese}` | Rótulo do tableau saía "Assumption" em inglês (§9.4). `\DeclareDocumentMacro` usa `\def`, logo o override em `slc-config.sty` (carregado depois) vence. Corrige C09-01. |
| 4 | `include/glossary.tex` (`variable assignment`) | sem `plural=` | `plural={atribuições de variáveis}` | `\glspl` gerava "atribuição de variáveiss" (duplo s). |

## Decisões de terminologia (a aplicar na prosa — Fase 4)

Política fixada para uniformizar variantes encontradas na auditoria:

| Conceito EN | Variantes vistas | **Decisão** | Notas |
|-------------|------------------|-------------|-------|
| `entails` / `\Entails` | consequência de / implica / acarretamento / acarretada | **"consequência de"** (verbo: "é consequência de"; nome: "consequência") | Evitar "implica" (é para `\lif`) e "acarretamento". Alinhar Def. 7.25 (título e corpo) e Resumos. |
| equinumerosity | equipotência / equinumeroso | **"equinumeroso"** | Token já é `equinumeroso` (L126); corrigir prosa que diz "equipotência" (cap. 4). |
| pairing function | pareamento / emparelhamento | **"função de emparelhamento"** | Uniformizar §4.4 com token. |
| proof-theoretic | prova-teórica / da Teoria da Prova | **"da Teoria da Prova"** | Alinhar cap. 11 (§11.7) com caps. 10/12. |
| parthood | de parte / parte-todo / mereologia | **"mereologia" / "parte-todo"** | cap. 8. |
| array | array (EN) / matriz | **"matriz"** | cap. 4 §4.5–4.7. |
| surjective (grafia) | sobrejectiva (pt-PT) / sobrejetora | **"sobrejetora"** | cap. 4. |
| "i.e." na prosa | "O.s." (abreviatura manual) / "isto é" | **"isto é"** | "O.s." é literal na fonte (~dezenas); não é token. |
| "infinitely many" | "infinitamente muitos" / "infinitos" | **"infinitos"** / "um número finito de" | calco. |
| power set | (já uniforme) "conjunto potência" | **manter "conjunto potência"** | O audit antigo pedia "conjunto das partes", mas o build atual já é consistente em "conjunto potência"; manter consistência. |

## Notas sobre tokens verbais (derive/prove/discharge) e `!!a{...}`

- `\settexttoken{derive}{deriva}{derivam}` e afins geram **formas finitas**; onde a prosa precisa de **infinitivo** ("derivar", "descarregar"), a correção é **na fonte** (usar a palavra literal), não no token — porque o token está correto noutros contextos. Ver Grupo 6 da lista-mestre.
- `!!a{...}`/`!!^a{...}` inserem artigo + adjetivo em ordem inglesa; quando gera artigo duplicado ("um um", "a completo") ou ordem errada ("a sobrejetora função"), corrige-se **na fonte** (remover artigo manual / reordenar). Grupos 4 e 5.

## Glossário — avisos `glo:` (27)
Decisão: **não bloquear**. Todas as 27 entradas existem em `glossary.tex`; os avisos são de hyperlink interno entre descrições (artefacto `glossaries`+`hyperref`), o texto do glossário renderiza corretamente. Reavaliar no fim; não afeta a leitura.
