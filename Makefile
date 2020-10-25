.PHONY: clean-pyc clean-build clean

help:
	@echo "clean - remove all build, test, coverage and Python artifacts"
	@echo "clean-build - remove build artifacts"
	@echo "clean-pyc - remove Python file artifacts"
	@echo "lint - check style with flake8"
	@echo "test - package with pytest"
	@echo "install - install packages local"

clean: clean-build clean-pyc

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr *.egg-info
	rm -fr .eggs/
	rm -fr .pytest_cache/
	rm -fr coverage.xml

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
	@find . -iname '.coverage' -delete

lint:
	pre-commit run --verbose --all-files

test:
	python setup.py test

local:
	pip install -e . --upgrade --no-cache

install: clean local
