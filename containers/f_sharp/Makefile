# Lab space for F#
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code

FSI = dotnet fsi

FLAGS =

# Folder locations
SRC = src
MAIN = main.fsx

all: run

run:
	$(FSI) $(FLAGS) $(SRC)/$(MAIN)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .