## Simple Makefile to create animated gif files from pdf files
##
## Special thanks to Mikko Korpela for the hint concerning the 'density'
## option in pull request #5 resulting in much crisper gif files
##
## Dirk Eddelbuettel, Sep 2018, GPL-2'ed

pdfs	= `ls *pdf`
gifs	= $(pdfs:.pdf=.gif)


all:	${gifs}

%.gif:	%.pdf
	convert -density 127 -delay 200 $< $@
