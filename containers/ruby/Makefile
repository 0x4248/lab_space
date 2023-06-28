# Lab space for Ruby
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code


RUBY = ruby

# Folder locations
SRC = src
MAIN = main.rb

all: run

run:
	$(RUBY) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .