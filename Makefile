.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: migrate
migrate:
	python -m core.manage migrate

.PHONY: migrations
migrations:
	python -m core.manage makemigrations

.PHONY: runserver
runserver:
	python -m core.manage runserver

.PHONY: superuser
superuser:
	python -m core.manage createsuperuser

.PHONY: install-pre-commit
install-pre-commit:
	pre-commit uninstall; pre-commit install # makes sure the command runs on the same shell


.PHONY: lint
lint:
	pre-commit run --all-files


.PHONY: update
update: install migrate install-pre-commit ;
