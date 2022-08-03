##@ [Container: Actions]

.PHONY: docker-up
docker-up: ## Create and start all docker containers
	docker-compose up -d

.PHONY: docker-down
docker-down: ## Stop and remove all docker containers.
	docker-compose down

.PHONY: docker-config
docker-config: validate-docker-variables ## List the configuration
	docker-compose config

.PHONY: docker-prune
docker-prune: ## Remove ALL unused docker resources, including volumes
	@docker system prune -a -f --volumes
