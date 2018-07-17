#!/bin/bash

# Shell script to generate a reference manual from the comments in the source code, with
# Doxygen. The following tools should be installed and accessible on the default path:
# - Doxygen
# - Graphviz
# - Make
# - Texlive-Latex
#
# On Debian based systems: sudo apt install make doxygen graphviz texlive-latex-base 
#                                           texlive-latex-extra
# On openSUSE based systems: sudo zypper install make doxygen graphviz texlive-latex 
#                                        texlive-tabu texlive-tocloft
rm -rf ../RM_OpenBLT.pdf
doxygen DoxyfileOpenBLT
cd output/OpenBLT/latex/
make
cp refman.pdf ../../../../RM_OpenBLT.pdf
cd ../../../
