# Lab space for R
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
#
# Targets:
# make - run code
# make run - run code
# make clean - remove build files

# Compiler
R = Rscript

# Compiler flags.
FLAGS =

# Folder locations
SRC = src
MAIN = main.R

all: run

run:
	$(R) $(FLAGS) $(SRC)/$(MAIN)

clean:
	rm -rf $(SRC)/*.Rout

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .