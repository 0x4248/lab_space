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
	cd $(SRC)
	java Main

clean:
	rm -rf $(SRC)/*.class