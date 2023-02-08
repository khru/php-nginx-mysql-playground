# PHP 8 development environment with PHP-FPM, Nginx and MySQL, using Docker and Docker Compose

## how to use it
- Use the make command to access al the commands and also to help you

## Copy .env.example to .env

```bash
cp .env.example .env
```
or use the make command (you need to have installed on your system the make command)
```bash
make make-init
```

## Build a Docker image for PHP with the content of the root folder

```bash
docker build -t php-project .docker
```

To rebuild the docker without cache use the following command
```bash
docker build --no-cache -t php-project .docker
```

## Running the docker-compose

```bash
docker-compose up -d
```

With `make` use:
```bash
make docker-up
```

## To stop the docker containers

With `docker-composer`
```bash
docker-compose down
```

With `make`
```bash
make docker-down
```

## To remove the orphan containers

With `docker-compose`
```bash
docker-compose down --remove-orphans
```

With `make` command:
```bash
make docker-down
```

## To connect the docker containers with a non root user

the variables are on the `.env` file for the examples we would use:
```dotenv
DOCKER_APP_UUID=1000
DOCKER_NGINX_UUID=1000
DOCKER_DB_UUID=1000
DOCKER_COMPOSER_UUID=1000

COMPOSER_CONTAINER_NAME=composer
NGINX_CONTAINER_NAME=nginx-webserver
DB_CONTAINER_NAME=db
APP_CONTAINER_NAME=app
```

with `docker-compose` command:

**To the PHP container**
```bash
docker-compose run --rm --service-ports -u $(DOCKER_APP_UUID) $(APP_CONTAINER_NAME) /bin/bash
# this would be like calling this on the terminal
# docker-compose run --rm --service-ports -u 1000 app /bin/bash
```

**To the BD container**
```bash
docker-compose run --rm --service-ports -u $(DOCKER_DB_UUID) $(DB_CONTAINER_NAME) /bin/bash
# this would be like calling this on the terminal
# docker-compose run --rm --service-ports -u 1000 db /bin/bash
```

**To the NGINX container**
```bash
docker-compose run --rm --service-ports -u $(DOCKER_NGINX_UUID) $(NGINX_CONTAINER_NAME) /bin/bash
# this would be like calling this on the terminal
# docker-compose run --rm --service-ports -u 1000 nginx-webserver /bin/bash
```

**To the COMPOSER container**
```bash
docker-compose run --rm --service-ports -u $(DOCKER_COMPOSER_UUID) $(COMPOSER_CONTAINER_NAME) /bin/bash
# this would be like calling this on the terminal
# docker-compose run --rm --service-ports -u 1000 composer /bin/bash
```

with `make` command:
**To the PHP container**
```bash
make bash-php
```

**To the BD container**
```bash
make bash-db
```

**To the NGINX container**
```bash
make bash-nginx
```

**To the COMPOSER container**
```bash
make bash-composer
```

## The make command

The make command is using the `Makefile` on the root directory and it's also getting the
information from inside de `.make` folder were we have each script loaded

## The PHP configuration
The PHP configuration is inside the `.docker` folder on the `Dockerfile`

## The Nginx configuration
The Nginx configuration is inside the `.nginx` folder

## The database
Whenever you run the dockers, the information inside the database will be store under de `data`
folder this will allow our database to persist even when we stop the container.
