# Lab space Makefile
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

DOCKER = docker
SRC = dockerfiles

build:
	$(DOCKER) build -f $(SRC)/blank.dockerfile . -t lab_space_blank
	$(DOCKER) build -f $(SRC)/bash.dockerfile . -t lab_space_bash
	$(DOCKER) build -f $(SRC)/c.dockerfile . -t lab_space_c
	$(DOCKER) build -f $(SRC)/cpp.dockerfile . -t lab_space_cpp
	$(DOCKER) build -f $(SRC)/d.dockerfile . -t lab_space_d
	$(DOCKER) build -f $(SRC)/elixir.dockerfile . -t lab_space_elixir
	$(DOCKER) build -f $(SRC)/fortran.dockerfile . -t lab_space_fortran
	$(DOCKER) build -f $(SRC)/go.dockerfile . -t lab_space_go
	$(DOCKER) build -f $(SRC)/java.dockerfile . -t lab_space_java
	$(DOCKER) build -f $(SRC)/lisp.dockerfile .	-t lab_space_lisp
	$(DOCKER) build -f $(SRC)/lua.dockerfile . -t lab_space_lua
	$(DOCKER) build -f $(SRC)/nodejs.dockerfile . -t lab_space_nodejs
	$(DOCKER) build -f $(SRC)/python.dockerfile . -t lab_space_python
	$(DOCKER) build -f $(SRC)/r.dockerfile . -t lab_space_r
	$(DOCKER) build -f $(SRC)/ruby.dockerfile . -t lab_space_ruby
	$(DOCKER) build -f $(SRC)/rust.dockerfile . -t lab_space_rust
	$(DOCKER) build -f $(SRC)/typescript.dockerfile . -t lab_space_typescriptc
	$(DOCKER) build -f $(SRC)/php.dockerfile . -t lab_space_php