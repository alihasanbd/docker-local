FROM mariadb:10.3.28-focal
# COPY ./my.cnf /etc/mysql/conf.d/

RUN apt-get update && apt-get install -y iputils-ping
ARG MYSQL_USER 
ARG MYSQL_ROOT_PASSWORD 
ENV MYSQL_USER ${MYSQL_ROOT_PASSWORD?EnvDbRootUrror}
ENV MYSQL_USER ${MYSQL_USER?EnvDbUserUrror}

RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/

