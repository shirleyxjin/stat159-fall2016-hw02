.Phony: all data clean

all: report.pdf eda-output.txt regression.Rdata

data:
  curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv -o data/Advertising.csv

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
  Rscript -e "library(rmarkdown); render('report/report.Rmd','pdf_document')"

eda-output.txt: data/Advertising.csv code/eda-script.R
  RScript code/eda-script.R

regression.Rdata: code/regression-script.R data/Advertising.csv
	RScript code/regression-script.R

clean:
	rm -f report/report.pdf
