# Set Theory (Portuguese / pt-BR)

[![Book Cover](https://st.openlogicproject.org/pt/settheory.png)](https://st.openlogicproject.org/pt/settheory-screen.pdf)


_Teoria dos Conjuntos_ is the Portuguese (pt-BR) **translation and
adaptation, by Pedro Lima**, of _Set Theory: An Open Introduction_ by Tim
Button — a brief introduction to the philosophy of set theory, built on the
_[Open Logic Text](https://github.com/OpenLogicProject/OpenLogic/)_.

This directory contains only the LaTeX driver files, configuration,
translated front matter, and book-specific figures (`assets/diagrams/`).
The **translated content** lives one level up in this same repository
(`locale/pt/content/`), and the build also requires the English _Open
Logic Text_ for shared macros, class files, assets, and any not-yet
translated material.

You can download the PDF of the most recent version from the [Open
Logic builds site](https://builds.openlogicproject.org/):

- [Screen version](https://st.openlogicproject.org/pt/settheory-screen.pdf)
- [Print version](https://st.openlogicproject.org/pt/settheory-print.pdf)

## How this is organized (consolidated layout)

The English books are standalone repositories cloned into
`OpenLogic/courses/`. The **Portuguese** editions instead live *inside* the
localization repository `OpenLogic-pt`, which is cloned into `locale/pt/`:

```
OpenLogic/                                   # English upstream: sty/, assets/, misc/, content/
└── locale/
    └── pt/                                  # OpenLogic-pt (this localization)
        ├── content/                         # translated content
        └── courses/
            ├── set-theory-pt/               # <-- this book
            └── sets-logic-computation-pt/
```

## Building the book

```
# 1. English upstream + shared cover/photo assets
git clone https://github.com/OpenLogicProject/OpenLogic.git
cd OpenLogic/assets
git clone https://github.com/OpenLogicProject/photos.git
git clone https://github.com/OpenLogicProject/portraits.git
cd ..

# 2. This localization, into locale/pt
cd locale
git clone https://github.com/OpenLogicProject/OpenLogic-pt.git pt
cd pt

# 3. gitinfo2 hooks, so the credits page shows the real Git revision/date
#    (see githooks/README.md for details)
cp githooks/post-commit githooks/post-checkout githooks/post-merge .git/hooks/
git checkout HEAD        # generates .git/gitHeadInfo.gin

# 4. Build
cd courses/set-theory-pt
make                     # or: latexmk -pdf settheory-screen
```

`make` regenerates `olprevision.tex` (via `../../../../misc/makeolprevision`
— this file is **generated, not versioned**) and runs `latexmk` with the
bibliography. Building by hand also works, but then also run `bibtex
settheory-screen` for the bibliography.

`settheory-screen.tex` produces the color on-screen version;
`settheory-print.tex` the print version. Both load `settheory.tex`, which
pulls most of its material from the `OpenLogic` repository, so the book only
compiles from within this directory of a full `OpenLogic` + `locale/pt`
checkout.

The English original (and public PDFs) are at
<https://builds.openlogicproject.org/>.

## License

[![Creative Commons License](https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png)](https://creativecommons.org/licenses/by/4.0/)

_Set Theory_ by [Tim Button](http://nottub.com/), translated and adapted
into Portuguese by Pedro Lima, is licensed under a [Creative Commons
Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/). It is based on
_[The Open Logic Text](https://github.com/OpenLogicProject/OpenLogic)_ by
the [Open Logic Project](https://openlogicproject.org/), used under a
Creative Commons Attribution 4.0 International License.
