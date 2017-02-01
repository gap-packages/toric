##  This compiles the documentation into HTML, PDF, TXT.
##  Requirements: GAP, the GAPDoc and AutoDoc packages, pdflatex
##
##  Run this via `gap makedoc.g` from within the package directory.
##

if fail = LoadPackage("AutoDoc", ">= 2016.01.21") then
    Error("AutoDoc 2016.01.21 or newer is required");
fi;

AutoDoc(rec( scaffold := rec( MainPage := false )));
