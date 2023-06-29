# Lab space for Assembly
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
#
# Targets:
# make - run code
# make compile - compile code
# make run - run code
# make clean - remove build files

# Compiler
AS = as
LD = ld

# Compiler flags.
ASFLAGS =
LDFLAGS =

# Folder locations
SRC = src
MAIN = main.asm
BIN = bin
OUTPUT = main

all: init compile run

compile:
	$(AS) $(ASFLAGS) -o $(BIN)/$(OUTPUT).o $(SRC)/$(MAIN)
	$(LD) $(LDFLAGS) -o $(BIN)/$(OUTPUT).out $(BIN)/$(OUTPUT).o
	rm $(BIN)/*.o

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