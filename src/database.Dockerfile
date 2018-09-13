FROM library/mysql:5.7.18
COPY ./wordpress.sql /docker-entrypoint-initdb.d/