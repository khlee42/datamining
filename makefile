RMDS := $(wildcard *.Rmd) $(wildcard ./exercise/*.Rmd) $(wildcard ./exam/final/*.Rmd) $(wildcard ./exam/midterm/*.Rmd)
HTMLS:= $(RMDS:.Rmd=.html)

all: $(HTMLS)
	@echo *---- Generate all ----*

%.html: %.Rmd global.R
	Rscript -e 'rmarkdown::render("$<")'

## clean: Delete auto-generated log files
.PHONY : clean
clean:
	@echo *---- Deleting log files ----*
	rm *.log *.Rout

.PHONY : help
help:
	@echo all       : Generate all
	@echo clean     : Delete auto-generated log files