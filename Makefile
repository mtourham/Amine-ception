FILE = srcs/docker-compose.yml

all: build up

build:
	@sh srcs/requirements/tools/dir.sh
	@docker compose -f $(FILE) build 

up:
	@docker compose -f $(FILE) up -d


down:
	@echo "Shutting down ..."
	@docker compose -f $(FILE) down --volumes

fclean: down
	@docker system prune --all

