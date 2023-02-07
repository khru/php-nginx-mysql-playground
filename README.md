# PHP 8 development environment with PHP-FPM, Nginx and MySQL, using Docker and Docker Compose

## how to use it
- use the make command to access al the commands

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

With m`make`
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

