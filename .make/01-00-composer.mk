##@ [Composer: Setup]

.PHONY: composer/install
composer-install: ## Run composer install.
	@$(MAKE) composer ARGS="install"

.PHONY: composer/update
composer-update: ## Run composer update.
	@$(MAKE) composer ARGS="update"

.PHONY: composer/autoload
composer-autoload: ## Run composer dump-autoload.
	@$(MAKE) composer ARGS="dump-autoload"

.PHONY: composer/remove
composer-remove: ## Deletes the vendor directory
	sudo rm -rf ./vendor

.PHONY: composer
composer: ## Runs any composer argument call with ARGS="whatever"
	@echo "COMPOSER_CONTAINER=$(COMPOSER_CONTAINER_NAME)"
	@echo "ARGS=$(ARGS)"
	docker-compose run --rm --service-ports $(COMPOSER_CONTAINER_NAME) composer $(ARGS)
	@$(MAKE) fix-permissions
