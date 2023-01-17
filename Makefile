all: up

up :
	@docker-compose -f ./srcs/docker-compose.yml up -d

down :
	@docker-compose -f ./srcs/docker-compose.yml down

ps:
	@sudo docker ps

list:
	@sudo docker image list