# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:49:26 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/26 15:46:50 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install htop

RUN apt-get -y install openssl unzip wget

RUN apt-get -y install php-mysql

RUN apt-get -y install default-mysql-server

COPY . .

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf && mv /conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod 755 /tools/starting_mariadb.sh

EXPOSE 3306

RUN /tools/starting_mariadb.sh

ENTRYPOINT ["mysqld"]
