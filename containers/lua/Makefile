# Lab space for Lua
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code

LUA = lua5.4

# Folder locations
SRC = src
MAIN = main.lua

all: run

run:
	$(LUA) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .