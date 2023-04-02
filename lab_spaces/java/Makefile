# Lab space for Java
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
#
# Targets:
# make - run code
# make compile - compile code
# make run - run code
# make clean - remove build files

JAVAC = javac
FLAGS =

# Folder locations
SRC = src
MAIN = Main.java

all: compile run

compile:
	$(JAVAC) $(FLAGS) $(SRC)/$(MAIN)

run:
	bash ./run.sh

clean:
	rm -rf $(SRC)/*.class

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .