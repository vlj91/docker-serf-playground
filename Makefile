build:
	docker-compose up --build

destroy:
	docker-compose down -v && \
	docker-compose rm
