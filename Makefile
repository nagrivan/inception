# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:39:16 by nagrivan          #+#    #+#              #
#    Updated: 2021/07/27 15:53:32 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER-COMP = srcs/docker-compose.yml
SHELL_CLEAN = srcs/clean_all.sh

start:
	@docker-compose -f ${DOCKER-COMP} up

stop:
	@docker-compose -f ${DOCKER-COMP} down
	
re:
	@docker-compose -f ${DOCKER-COMP} up --build

clean:
	@docker system prune -af

fclean:
	bash ${SHELL_CLEAN}
