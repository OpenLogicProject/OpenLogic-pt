param(
    [switch]$Clean
)

$ErrorActionPreference = "Stop"

if ($Clean) {
    latexmk -c settheory-screen.tex
    exit $LASTEXITCODE
}

latexmk -pdf settheory-screen.tex
exit $LASTEXITCODE
