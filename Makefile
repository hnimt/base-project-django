test:
	docker-compose -f docker-compose-dev.yml run --rm app sh -c "python manage.py wait_for_db && python manage.py test && flake8"

build:
	docker-compose -f docker-compose-dev.yml build

up:
	docker-compose -f docker-compose-dev.yml up

down:
	docker-compose -f docker-compose-dev.yml down

makemigrations:
	docker-compose -f docker-compose-dev.yml run --rm app sh -c "python manage.py makemigrations"

migrate:
	docker-compose -f docker-compose-dev.yml run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"

superuser:
	docker-compose -f docker-compose-dev.yml run --rm app sh -c "python manage.py createsuperuser"

start:
	docker-compose -f docker-compose-dev.yml run --rm app sh -c "python manage.py runserver"

logs:
	docker-compose -f docker-compose-dev.yml logs
