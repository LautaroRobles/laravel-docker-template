# Si un usuario no esta en el grupo de docker debe usar `sudo docker`
docker := if `groups` =~ "docker" { "docker" } else { "sudo -E docker" }

# Al ejecutar `just` sin comandos muestra el listado de comandos disponibles
_default:
    @just --list --unsorted

# Ejecutar comando en la imagen
run *arguments:
	UNAME=$USER UID=$(id -u) GID=$(id -g) {{docker}} compose run -it laravel {{arguments}}

# Iniciar servidor de desarrollo
dev:
	UNAME=$USER UID=$(id -u) GID=$(id -g) {{docker}} compose run -it --service-ports laravel