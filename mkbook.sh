#!/bin/bash

R CMD Sweave book.Snw
R CMD latex book
R CMD bibtex book
R CMD latex book
R CMD bibtex book
R CMD latex book
makeindex book.idx
R CMD latex book
dvips book
ps2pdf book.ps
