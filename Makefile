.Phony: all data clean

all: eda-output.txt regression.Rdata report.pdf

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv -o data/Advertising.csv

eda-output.txt: code/eda-script.R data/Advertising.csv
	cd code; RScript eda-script.R

regression.Rdata: code/regression-script.R data/Advertising.csv
	cd code; RScript regression-script.R

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; Rscript -e "library(rmarkdown); render('report.Rmd','pdf_document')"

clean:
	rm -f report/report.pdf