# Sets, Logic, Computation (Portuguese / pt-BR)

_Conjuntos, Lógica, Computação_ is the Portuguese (pt-BR) **translation
and adaptation, by Pedro Lima**, of _Sets, Logic, Computation_ by Richard
Zach — itself a remix of the _[Open Logic
Text](https://github.com/OpenLogicProject/OpenLogic/)_. It is an
introductory textbook on metalogic: naive set theory, first-order logic,
sequent calculus and natural deduction, the completeness, compactness and
Löwenheim–Skolem theorems, Turing machines, and undecidability.

This directory contains only the LaTeX driver files, configuration,
translated front matter, and book-specific figures. The **translated
content** lives one level up in this same repository
(`locale/pt/content/`), and the build also requires the English _Open
Logic Text_ for shared macros, class files, assets, and any not-yet
translated material.

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
            ├── sets-logic-computation-pt/   # <-- this book
            └── set-theory-pt/
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
cd courses/sets-logic-computation-pt
make                     # or: latexmk -pdf slc-screen
```

`make` regenerates `olprevision.tex` (via `../../../../misc/makeolprevision`
— this file is **generated, not versioned**) and runs `latexmk` with the
glossary and bibliography. Building by hand also works, but then also run
`makeglossaries slc-screen` and `bibtex slc-screen`.

- `slc-screen.tex` — color version with links, for screen reading.
- `slc-print.tex` — black-and-white version for printing.

Both load `slc.tex`, which pulls most of its material from the `OpenLogic`
repository, so the book only compiles from within this directory of a full
`OpenLogic` + `locale/pt` checkout.

The English original (and public PDFs) are at
<https://builds.openlogicproject.org/>.

## License

[![Creative Commons License](https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png)](https://creativecommons.org/licenses/by/4.0/)

_Sets, Logic, Computation_ by [Richard Zach](https://richardzach.org/),
translated and adapted into Portuguese by Pedro Lima, is licensed under a
[Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/). It is based on
_[The Open Logic Text](https://github.com/OpenLogicProject/OpenLogic)_ by
the [Open Logic Project](https://openlogicproject.org/), used under a
Creative Commons Attribution 4.0 International License.
