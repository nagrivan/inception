# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:49:26 by nagrivan          #+#    #+#              #
#    Updated: 2021/07/27 18:47:51 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

EXPOSE 3306

RUN apt-get update 
RUN apt-get install -y mariadb-server vim

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod 444 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY /tools/starting_mariadb.sh      /var/www/
RUN chmod 755 /var/www/starting_mariadb.sh 
ENTRYPOINT ["bash", "/var/www/starting_mariadb.sh"]
