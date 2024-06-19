## Quickstart

#### Requisitos

- Just
- Docker

#### Iniciar
```bash
cp src/.env.example src/.env
just run composer install
just run npm install
just run php artisan key:generate
just run php artisan migrate
just dev
```