PUB_SITES?=			csc sys
PUB_FILES= 			anobe-paper.pdf anobe-slides.pdf
PUB_CATEGORY= 		

PUB_SERVER-csc= 	u-shell.csc.kth.se
PUB_METHOD-csc= 	ssh
PUB_DIR-csc= 		~/public_html

PUB_SERVER-sys= 	sftp.sys.kth.se
PUB_METHOD-sys= 	ssh
PUB_DIR-sys= 		~/public_html

USE_LATEXMK= 		yes
USE_BIBLATEX= 		yes

.PHONY: all
all: anobe-paper.pdf anobe-slides.pdf

anobe-paper.pdf: anobe-paper.tex anobe.tex anobe.bib
anobe-paper.pdf: llncs biblatex-lncs
anobe-paper.pdf: anobe-content.tex
anobe-paper.pdf: anon.bib crypto.bib meta.bib osn.bib surveillance.bib
anobe-paper.pdf: ac.acr crypto.acr surveillance.acr stdterm.acr

anobe-slides.pdf: anobe-slides.tex anobe.tex anobe.bib
anobe-slides.pdf: llncs biblatex-lncs
anobe-slides.pdf: anobe-content.tex
anobe-slides.pdf: anon.bib crypto.bib meta.bib osn.bib surveillance.bib
anobe-slides.pdf: ac.acr crypto.acr surveillance.acr stdterm.acr

makefiles libbib:
	git submodule update --init $@

### INCLUDES ###

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/depend.mk
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/pub.mk

INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
