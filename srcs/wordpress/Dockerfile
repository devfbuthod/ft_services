FROM alpine:latest

EXPOSE 5050

RUN apk update --no-cache
RUN apk upgrade --no-cache

RUN apk add --no-cache php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN apk add libc6-compat gcompat

RUN mkdir -p /www
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN mv wordpress/* /www/.
RUN rm -rf latest.tar.gz wordpress

RUN apk add libc6-compat gcompat
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/v3.13/community

COPY ./srcs/setup.sh /
COPY ./srcs/wp-config.php /www/.

RUN chmod +x /setup.sh

ENTRYPOINT ["/bin/sh", "/setup.sh"]