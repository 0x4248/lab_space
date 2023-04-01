# Lab space for TypeScript
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code

NPX = npx
TSC = tsc

SRC = src
MAIN = main.ts

OUTPUT = bin
OUTPUT_FILE = main.js

all: run

run:
	$(NPX) $(TSC) $(SRC)/$(MAIN) --outDir $(OUTPUT)
	node $(OUTPUT)/$(OUTPUT_FILE)