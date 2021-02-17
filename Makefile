PYTHON = python3
PROJECT_DIR = src/myproject
PROJECT_MAIN = ${PROJECT_DIR}/main.py


.DEFAULT_GOAL = help

.PHONY: help clean upload install run

help:
	@echo "---------------HELP-----------------"
	@echo "make help - display this message"
	@echo "make clean - clean the project"
	@echo "make upload - upload the project to PyPI"
	@echo "make install - install the project to local python installation"
	@echo "make run - run the project"
	@echo "------------------------------------"

clean:
	@echo "Cleaning project"
	rm --force --recursive *.pyc
	rm --force --recursive *.pyo
	rm --force --recursive build/
	rm --force --recursive dist/
	rm --force --recursive *.egg-info
	rm --force --recursive *.build/
	rm --force --recursive *.dist/

upload: clean
	@echo "Uploading project"
	${PYTHON} setup.py sdist bdist_wheel
	${PYTHON} -m twine upload dist/*

install: clean
	@echo "Installing project"
	${PYTHON} -m pip install .

run: clean
	@echo "Running project"
	${PYTHON} ${PROJECT_MAIN}