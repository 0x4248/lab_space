# Lab space for C
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - compile and run
# make compile - compile
# make run - run (needs to be compiled first)
# make clean - clean up


# Compiler
CC = gcc

# Compiler flags. These are the default flags.
CFLAGS = 
STD = c17

# Folder locations
SRC = src
MAIN = main.c
BIN = bin
LIB = lib
INCLUDE = include/
OUTPUT = $(BIN)/main

all: init compile run

init:
	rm -rf bin
	mkdir bin

compile:
	$(CC) $(CFLAGS) -std=$(STD) $(SRC)/*.c -o $(OUTPUT) -I $(LIB) -I $(INCLUDE)

run:
	./$(OUTPUT)

clean:
	rm -rf bin

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .