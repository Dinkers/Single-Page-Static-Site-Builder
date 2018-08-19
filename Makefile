.PHONY: setup files npm git grunt


all:
	@-${MAKE} setup
	@-${MAKE} files
	@-${MAKE} npm
	@-${MAKE} git
	@-${MAKE} grunt

setup:
	@echo "What is the name of the project"

files:
	@echo "Creating the files and structure"

npm:
	@echo "Handling npm dependencies"

git:
	@echo "Pushing to Github repository"

grunt:
	@echo "Starting local development server"
