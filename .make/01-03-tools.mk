##@ [Tools: useful tools for docker]

.PHONY:
delete-db: ## Create and start all docker containers
	sudo rm -rf ./data/db/mysql

.PHONY: docker-down
fix-permissions: ## Stop and remove all docker containers.
	sudo chown ${USER}:${USER} -R ./
