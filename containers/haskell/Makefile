# Lab space for Haskell
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
#
# Targets:
# make - run code

HASKELL = ghc
FLAGS =

# Folder locations
SRC = src
MAIN = main.hs

BIN = bin
OUTPUT = main

all: init run

init:
	mkdir -p $(BIN)

run:
	$(HASKELL) $(FLAGS) $(SRC)/$(MAIN) -o $(BIN)/$(OUTPUT)
	./$(BIN)/$(OUTPUT)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .