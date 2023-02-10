.DEFAULT_GOAL := help

build: ## build develoment environment
	if ! [ -f .env ];then cp .env.sample .env;fi
	docker-compose build
	docker-compose run --rm app bundle install
	docker-compose run --rm app bin/rails db:create
	docker-compose run --rm app bin/rails db:schema:load
	docker-compose run --rm app bin/rails db:seed

serve: ## Run Server
	docker-compose up app

db-log: ## Tail mariadb log
	docker-compose exec mysql tail -f /var/log/mysql/mysql-query.log

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
