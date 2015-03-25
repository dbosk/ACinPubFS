PUB_SITES?=			csc sys
PUB_FILES= 			anobe.pdf
PUB_CATEGORY= 		

PUB_SERVER-csc= 	u-shell.csc.kth.se
PUB_METHOD-csc= 	ssh
PUB_DIR-csc= 		~/public_html

PUB_SERVER-sys= 	sftp.sys.kth.se
PUB_METHOD-sys= 	ssh
PUB_DIR-sys= 		~/public_html

USE_LATEXMK= 		yes
USE_BIBLATEX= 		yes

anobe.pdf: anobe.tex anobe.bib llncs biblatex-lncs
anobe.pdf: anobe-content.tex
anobe.pdf: anon.bib crypto.bib surveillance.bib
anobe.pdf: ac.acr crypto.acr surveillance.acr stdterm.acr

makefiles libbib:
	git submodule update --init $@

### INCLUDES ###

include libbib/libbib.mk
include makefiles/depend.mk
include makefiles/tex.mk
include makefiles/pub.mk
