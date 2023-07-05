# Lab space for Python
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
#
# Targets:
# make - run code

PYTHON = python3

FLAGS =

# Folder locations
SRC = src
MAIN = main.py

all: run

run:
	$(PYTHON) $(FLAGS) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .