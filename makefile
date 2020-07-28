RMDS := $(wildcard *.Rmd) $(wildcard ./assignment/*.Rmd) $(wildcard ./exam/*.Rmd)
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