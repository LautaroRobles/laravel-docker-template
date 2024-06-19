## Quickstart

#### Requisitos

- Just
- Docker

#### Iniciar
```bash
cp .env.example .env
just run composer install
just run npm install
just run php artisan key:generate
just run php artisan migrate
just run php seed
just dev
```