##@ [Container: Actions]

.PHONY: docker-up
docker-up: ## Create and start all docker containers
	docker-compose up -d

.PHONY: docker-down
docker-down: ## Stop and remove all docker containers.
	docker-compose down --remove-orphans


.PHONY: docker-prune
docker-prune: ## Remove ALL unused docker resources, including volumes
	@docker system prune -a -f --volumes
