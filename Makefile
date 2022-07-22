install:
	@poetry install

requirements: poetry.lock
	@poetry export -f requirements.txt --output requirements.txt --without-hashes

install-pip: requirements
	@pip install -r requirements.txt

lint:
	@poetry run flake8 mainslab

start:
	@poetry run python manage.py runserver

migrations:
	@poetry run python manage.py migrate