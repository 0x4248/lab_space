# Lab space for PHP
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code


PHP = php
FLAGS =

# Folder locations
SRC = src
MAIN = index.php

all: run

run:
	$(PHP) $(FLAGS) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .