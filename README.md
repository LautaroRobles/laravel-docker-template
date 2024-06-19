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

## Crear proyecto laravel desde 0

Si queres crear un proyecto de laravel desde cero ejecutar lo siguiente

```bash
rm -rf src/{.,}*
just run composer create-project laravel/laravel /src/temp
mv src/temp/{.,}* src/
rm -r src/temp/
```