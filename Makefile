# Directory with the markdown files. Defaults to "src"
SOURCEDIR ?= src
# Directory to output files. Defaults to "dist"
OUTDIR ?= dist
# Porject name. Defaults to the name of working directory
PROJECT ?= $(shell basename `pwd`)

# Generate EPUB file
epub:
	pandoc -d config.yml \
	`find $(SOURCEDIR) -name '*.md' | sort` \
	-o $(OUTDIR)/$(PROJECT).epub


# Generate PDF file
pdf:
	pandoc -d config.yml \
	`find $(SOURCEDIR) -name '*.md' | sort` \
	-o $(OUTDIR)/$(PROJECT).pdf
