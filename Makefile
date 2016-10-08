.Phony: all data clean

all: data/eda-output.txt data/regression.Rdata report/report.pdf

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	RScript code/eda-script.R

data/regression.Rdata: code/regression-script.R data/Advertising.csv
	RScript code/regression-script.R

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc report/report.Rmd -s -o Report.pdf

clean:
	rm -f report/report.pdf