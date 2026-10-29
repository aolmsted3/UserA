R_LIBS_USER := C:/Users/aeolmst/AppData/Local/R/win-library/4.6

export R_LIBS_USER

report.html: report.Rmd code/02_render_report.R random_numbers
	Rscript code/02_render_report.R

random_numbers:
	Rscript code/01_make_output.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html