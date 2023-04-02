# Lab space for D
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code
# make run - run code
# make clean - remove build files


D_COMPILER = dmd

# Folder locations
SRC = src
MAIN = main.d
BIN = bin
OUTPUT = main

all: init compile run

compile:
	$(D_COMPILER) $(SRC)/$(MAIN) -of=$(BIN)/$(OUTPUT)

run:
	$(BIN)/$(OUTPUT)

init:
	mkdir -p $(BIN)

clean:
	rm -rf $(BIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .