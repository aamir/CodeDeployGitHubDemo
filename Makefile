# Makefile is used for development workflow
MAKEFLAGS = --no-print-directory --always-make --silent
MAKE = make $(MAKEFLAGS)

VENV_NAME = env
VENV_ACTIVATE = . $(VENV_NAME)/bin/activate

virtualenv:
	@echo "Creating virtualenv..."
	test -d $(VENV_NAME) || virtualenv $(VENV_NAME)
	$(VENV_ACTIVATE) && pip install -r requirements.txt