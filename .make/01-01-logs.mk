##@ [Container: Logs]

.PHONY: logs
logs: ## view all logs.
	@docker-compose logs -f -t

.PHONY: logs-php
logs-php: ## view php logs.
	@docker-compose logs -f -t $(APP_CONTAINER_NAME)

.PHONY: logs-nginx
logs-nginx: ## view nginx logs.
	@docker-compose logs -f -t $(NGINX_CONTAINER_NAME)

.PHONY: logs-db
logs-db: ## view database logs.
	@docker-compose logs -f -t $(DB_CONTAINER_NAME)
