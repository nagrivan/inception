# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:49:26 by nagrivan          #+#    #+#              #
#    Updated: 2021/05/15 17:23:52 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install openssl unzip wget

RUN apt-get -y install php-mysql

RUN apt-get -y install default-mysql-server

EXPOSE 3306

CMD