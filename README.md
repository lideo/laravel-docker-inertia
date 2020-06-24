This repository is a test set up of a Laravel project for local development with Docker (NGINX, PHP and MySQL).

It uses [Inertia.js](https://inertiajs.com/) and React for front-end rendering.

## Configuration

### Docker Containers

The container set up is based on this blog post:

https://dev.to/aschmelyun/the-beauty-of-docker-for-local-laravel-development-13c0

### .env

```
...
APP_URL=http://localhost:8080

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
...
```

These configuration values are not real.

The `DB_HOST` field needs to be the name of the container that runs the database, in this case the name is "mysql", as specified in the docker-compose configuration file.

## Docker Compose commands

Build the services of the container:

```
docker-compose build
```

Start the container:

```
docker-compose up -d
```

Stop de container:

```
docker-compose down
```

Execute commands in the containers's php service:

```
docker-compose exec php <command>
```

Example: Watch for front-end changes:

```
docker-compose exec php npm run watch
```

Example: Create new Laravel controller (with artisan)

```
docker-compose exec php artisan make:controller
```
