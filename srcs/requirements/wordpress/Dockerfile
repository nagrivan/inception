# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/02 16:06:20 by nagrivan          #+#    #+#              #
#    Updated: 2021/07/16 13:20:41 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
	apt-get -y install openssl unzip wget vim  && \
	apt-get -y install php7.3 php-fpm php-mysql php-gd php-mbstring redis-server php-xml php-redis php-pspell php-zip 

RUN apt-get -y install htop

COPY . .

RUN cp conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf && service php7.3-fpm start

ADD  https://ru.wordpress.org/wordpress-5.7.2-ru_RU.tar.gz var/www/html/

RUN cd var/www/html/ && tar -xvzf wordpress-5.7.2-ru_RU.tar.gz && rm -rf wordpress-5.7.2-ru-RU.tar.gz

RUN chmod 755 ./tools/php_fpm_start.sh && cp -r conf/ var/www

EXPOSE 9000

#RUN mkdir ./run/php

#RUN cp -r wordpress/ var/www/html/

RUN cp conf/wp-config.php var/www/html/wordpress/

#RUN cp conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf && service php7.3-fpm start

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
