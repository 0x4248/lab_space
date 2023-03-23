# Blank lab space
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

COMMAND =
INPUT = 
OUTPUT =
OUTPUT_FILE =

all: init build run

help:
	@echo "For help please see the README.md file"

build:
	$(COMMAND) $(INPUT) $(OUTPUT)/$(OUTPUT_FILE)

run:
	./$(OUTPUT)/$(OUTPUT_FILE)

clean:
	rm -rf $(OUTPUT)

init:
	mkdir -p $(OUTPUT)

