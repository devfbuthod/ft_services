FROM alpine:latest

# Expose port
EXPOSE 3306

# Install and Update utils
RUN apk update --no-cache
RUN apk upgrade --no-cache
RUN apk add mysql --no-cache
RUN apk add mysql-client --no-cache
RUN mkdir -p /run/mysqld

# Copy configuration
COPY ./srcs/my.cnf ./etc/my.cnf.d/
COPY ./srcs/setup.sh /

RUN chmod 0444 /etc/my.cnf.d/my.cnf

# Access setup
COPY ./srcs/setup.sh /
RUN chmod +x /setup.sh

ENTRYPOINT ["/bin/sh", "/setup.sh"]