# Lab space for Fortran
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code
# make compile - compile code
# make run - run code
# make clean - remove build files

# Compiler
FORTRAN = gfortran

# Compiler flags.
FLAGS =

# Folder locations
SRC = src
MAIN = main.f90
BIN = bin
OUTPUT = main

all: init compile run

compile:
	$(FORTRAN) $(FLAGS) $(SRC)/$(MAIN) -o $(BIN)/$(OUTPUT).out

run:
	./$(BIN)/$(OUTPUT).out

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