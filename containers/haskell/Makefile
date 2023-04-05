# Lab space for Haskell
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code

HASKELL = ghs
FLAGS =

# Folder locations
SRC = src
MAIN = main.hs

all: run

run:
	$(HASKELL) $(FLAGS) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .