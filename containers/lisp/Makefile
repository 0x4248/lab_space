# Lab space for Lisp
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
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

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .