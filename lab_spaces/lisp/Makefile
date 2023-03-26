# Lab space for Lisp
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code

LISP = sbcl
LISP_FLAGS = --script

# Folder locations
SRC = src
MAIN = main.lisp


all: run

run:
	$(LISP) $(LISP_FLAGS) $(SRC)/$(MAIN)