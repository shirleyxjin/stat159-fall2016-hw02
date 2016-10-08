## STAT 159 - Reproducible and Collaborative Data Science
### Homework 2

**Author**: Shirley Jin

**Objective**: The objective of this homework assignment is to recreate the the regression results on sales and advertising effectiveness displayed in section 3.1 Simple Linear Regression (Chapter 3) of the book [**An Introduction to Statistical Learning**](http://www-bcf.usc.edu/~gareth/ISL/) authored by Gareth James.

**Structure**: The project file structure is that of the following:
```
stat159-fall2016-hw02/
	.gitignore
	README.md
	Makefile
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt
	  regression.RData
	code/
	  README.md
	  eda-script.R
	  regression-script.R
	images/
		histogram-sales.png
		histogram-sales.pdf
		histogram-tv.png
		histogram-tv.pdf
		scatterplot-tv-sales.png
		scatterplot-tv-sales.pdf
	report/
		report.Rmd
		report.pdf
```

**Details**: Code folder contains the R script codes used to analyze the data. Data folder contains the main data set `Advertising.csv` and other data stored using R. The project report is in the report folder. `make` can be called to recreate the analysis. 

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
