# Blank lab space
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space

COMMAND =
OUTPUT =
OUTPUT_FILE =
SRC = src
MAIN = 


all: init build run

help:
	@echo "For help please see the README.md file"

build:
	$(COMMAND) $(SRC)/$(MAIN) $(OUTPUT)/$(OUTPUT_FILE)

run:
	./$(OUTPUT)/$(OUTPUT_FILE)

clean:
	rm -rf $(OUTPUT)

init:
	mkdir -p $(OUTPUT)

edit:
	nano $(SRC)/$(MAIN)

edit_vi:
	vi $(SRC)/$(MAIN)

edit_vim:
	vim $(SRC)/ .