# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:49:26 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/19 19:11:46 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install openssl unzip wget

RUN apt-get -y install php-mysql

RUN apt-get -y install default-mysql-server

COPY . .

RUN mv /conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306