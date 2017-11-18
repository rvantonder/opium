.DEFAULT_GOAL: all

JBUILDER ?= jbuilder

all:
	@$(JBUILDER) build @install @DEFAULT

install:
	@$(JBUILDER) install

check:
	@$(JBUILDER) runtest

test: check

README.md: README.cpp.md $(wildcard examples/*.ml)
	@cppo -n $< -o $@

clean:
	@$(JBUILDER) clean

.PHONY: all clean check test
