PYTHON ?= $(shell command -v python3 python|head -n1)

.PHONY: test

test:
	ANSIBLE_PYTHON_INTERPRETER=$(PYTHON) molecule test