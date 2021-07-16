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
	apt-get -y install openssl unzip wget && \
	apt-get -y install php-fpm php-mysql php-gd php-mbstring redis-server php-xml php-redis php-pspell php-zip 

RUN apt-get -y install htop

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xvzf latest.tar.gz && rm -rf latest.tar.gz \
	mkdir var/www/

#COPY ./conf/ var/www/ && ./tools/

#RUN cp /conf/wp-config.php /var/www/  && mv wordpress/ var/www/wordpress/

COPY . .

RUN chmod 755 ./tools/php_fpm_start.sh && cp -r conf/ var/www

EXPOSE 9000

RUN cp conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf && service php7.3-fpm start

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
