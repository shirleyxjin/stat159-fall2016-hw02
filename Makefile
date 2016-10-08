.Phony: all data clean

all: eda-output.txt regression.Rdata report.pdf

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv -o data/Advertising.csv

eda-output.txt: data/Advertising.csv code/eda-script.R
	RScript code/eda-script.R

regression.Rdata: code/regression-script.R data/Advertising.csv
	RScript code/regression-script.R

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc report/report.Rmd -s -o Report.pdf

clean:
	rm -f report/report.pdf