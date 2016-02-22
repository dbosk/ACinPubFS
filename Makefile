.PHONY: all
all: DecentAC-paper.pdf DecentAC-slides.pdf

ANOBE_DEPENDS= 		DecentAC-content.tex
ANOBE_DEPENDS+= 	libbib.sty
ANOBE_DEPENDS+= 	anon.bib crypto.bib
ANOBE_DEPENDS+= 	meta.bib surveillance.bib osn.bib
ANOBE_DEPENDS+= 	ac.bib be.bib
ANOBE_DEPENDS+= 	rfc.bib
ANOBE_DEPENDS+= 	de-centralized.pdf_tex de-centralized.pdf
ANOBE_DEPENDS+= 	decentralized.pdf_tex decentralized.pdf

DecentAC-paper.pdf: DecentAC-paper.tex ${ANOBE_DEPENDS}
DecentAC-paper.pdf: llncs biblatex-lncs

de-centralized.pdf_tex de-centralized.pdf: de-centralized.svg
decentralized.pdf_tex decentralized.pdf: decentralized.svg

DecentAC-slides.pdf: DecentAC-slides.tex ${ANOBE_DEPENDS}

makefiles libbib:
	git submodule update --init $@


### INCLUDES ###

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
