up:
	@docker compose -f srcs/docker-compose.yml up --build -d

down:
	@docker compose -f srcs/docker-compose.yml down

build:
	@docker compose -f srcs/docker-compose.yml build

build-no-cache:
	@docker compose -f srcs/docker-compose.yml build --no-cache

clean:
	@docker compose -f srcs/docker-compose.yml down -v
	@sudo rm -rf ~/data/db/*
	@sudo rm -rf ~/data/wp/*

fclean: clean
	@docker system prune -a

