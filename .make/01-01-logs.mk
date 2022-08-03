##@ [Container: Logs]

.PHONY: logs
logs: ## view logs.
	@docker-compose logs -f -t
