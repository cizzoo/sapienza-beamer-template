# usage: make [light dark example]   (all = main deck + example deck, both variants)
all: light dark example

define build
	latexmk -xelatex -interaction=nonstopmode -jobname=$(2)_$(3) -usepretex='\def\sapvariant{$(3)}' $(1).tex
endef

light:
	$(call build,main,main,light)
dark:
	$(call build,main,main,dark)
example:
	$(call build,example,example,light)
	$(call build,example,example,dark)
clean:
	for j in main_light main_dark; do latexmk -C -jobname=$$j main.tex; done
	for j in example_light example_dark; do latexmk -C -jobname=$$j example.tex; done
