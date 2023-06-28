# Lab space for Bash
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code

BASH = bash

FLAGS =

# Folder locations
SRC = src
MAIN = main.bash

all: run

run:
	$(BASH) $(FLAGS) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .