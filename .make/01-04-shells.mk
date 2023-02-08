##@ [Shells: Connect to each container]

.PHONY: bash-php
bash-php: ## Connect to PHP container.
	docker-compose run --rm --service-ports -u $(DOCKER_APP_UUID) $(APP_CONTAINER_NAME) /bin/bash

.PHONY: bash-db
bash-db: ## Connect to BD container.
	docker-compose run --rm --service-ports -u $(DOCKER_DB_UUID) $(DB_CONTAINER_NAME) /bin/bash

.PHONY: bash-nginx
bash-nginx: ## Connect to NGINX container.
	docker-compose run --rm --service-ports -u $(DOCKER_NGINX_UUID) $(NGINX_CONTAINER_NAME) /bin/bash

.PHONY: bash-composer
bash-composer: ## Connect to COMPOSER container.
	docker-compose run --rm --service-ports -u $(DOCKER_COMPOSER_UUID) $(COMPOSER_CONTAINER_NAME) /bin/bash
