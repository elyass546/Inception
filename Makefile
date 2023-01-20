# Colors
C_GREEN = \033[1;32m
C_BLUE = \033[1;34m
C_RED = \033[1;31m
C_RES = \033[0m

all:
	@echo "$(C_GREEN)choose a command:$(C_RES)\n"
	@echo "$(C_BLUE)up      :$(C_RES) for builds,(re)creates, starts, and attaches to containers for a service."
	@echo "$(C_BLUE)down    : $(C_RES) for stops and removes containers, networks, volumes, and images created by $(C_RED)up$(C_RES)."
	@echo "$(C_BLUE)start   : $(C_RES) for starts existing containers for a service."
	@echo "$(C_BLUE)stop    : $(C_RES) for stops running containers without removing them. They can be started again with $(C_RED)start$(C_RES)."
	@echo "$(C_BLUE)restart : $(C_RES) for restarts all stopped and running services, or the specified services only."
	@echo "$(C_BLUE)ps      : $(C_RES) for list running containers."
	@echo "$(C_BLUE)netwrok : $(C_RES) for list networks."
	@echo "$(C_BLUE)volume  : $(C_RES) for list volumes."
	@echo "$(C_BLUE)list    : $(C_RES) for list images.\n"

up :
	@docker-compose -f srcs/docker-compose.yml up -d

down :
	@docker-compose -f srcs/docker-compose.yml down

stop:
	@docker-compose -f srcs/docker-compose.yml stop

start:
	@docker-compose -f srcs/docker-compose.yml start

restart:
	@docker-compose -f srcs/docker-compose.yml restart

volume:
	@docker volume list

network:
	@docker network ls

ps:
	@sudo docker ps

list:
	@sudo docker image list