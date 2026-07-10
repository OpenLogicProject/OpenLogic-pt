# Documentação do projeto (tradução)

- **Critérios actuais (gramática, léxico, espelho do EN):** [`CRITERIOS-PARIDADE-TRADUCAO.md`](../../../CRITERIOS-PARIDADE-TRADUCAO.md).
- **Índice de `docs/`** (glossário, comparação EN↔PT, auditoria): [`docs/README.md`](../../../docs/README.md).
- **Registo de conceitos por capítulo:** [`docs/GLOSSARIO-CONCEITOS-SET-THEORY.md`](../../../docs/GLOSSARIO-CONCEITOS-SET-THEORY.md).
- **Git / GitHub:** [`PROTOCOLO-VERSIONAMENTO.md`](../../../PROTOCOLO-VERSIONAMENTO.md).

Compilar o PDF (PowerShell):

```powershell
Set-Location "...\OpenLogic-traduzido\courses\set-theory"
latexmk -pdf settheory-screen.tex
```
