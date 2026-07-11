# Git hooks (gitinfo2)

Estes hooks geram automaticamente `.git/gitHeadInfo.gin` a cada
commit/checkout/merge. É esse ficheiro que o pacote LaTeX **gitinfo2**
lê para preencher a revisão e a data do Git na caixa de licença/créditos
dos livros (macros `\gitAbbrevHash` e `\gitAuthorDate`), e também é a
fonte de `misc/makeolprevision`, que gera o `olprevision.tex` de cada
curso (macro `\OLPrevision`).

Como `.git/hooks/` não é versionado pelo Git, guardam-se aqui cópias
para que qualquer pessoa reproduza a configuração.

## Instalação

A partir da raiz deste repositório (`locale/pt/`):

**Linux / macOS:**

```
cp githooks/post-commit githooks/post-checkout githooks/post-merge .git/hooks/
chmod +x .git/hooks/post-commit .git/hooks/post-checkout .git/hooks/post-merge
```

**Windows (PowerShell):**

```
Copy-Item githooks/post-commit,githooks/post-checkout,githooks/post-merge .git/hooks/
```

Depois de instalar, gere já o ficheiro para o estado atual:

```
git checkout HEAD
```

(ou simplesmente faça o próximo commit). Sem `.git/gitHeadInfo.gin`, a
caixa de licença mostrará `revisão (None)` e `revisão unknown` — instalar
os hooks resolve isso.
