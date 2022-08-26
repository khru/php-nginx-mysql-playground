# PHP 8 development environment with PHP-FPM, Nginx and MySQL, using Docker and Docker Compose

## how to use it
- use the make command

## Copy .env.example to .env
```bash
cp .env.example .env
```

## Build a Docker image for PHP with the content of the root folder

```bash
docker build -t php-project .docker
```
