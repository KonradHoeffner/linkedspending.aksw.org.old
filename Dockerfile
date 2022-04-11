# based on https://github.com/Dockerizing/OntoWiki/blob/master/Dockerfile
FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /var/www/html
RUN apt-get update && \
    apt-get install -y git make curl php5-cli php5-curl && \
    rm -rf /var/lib/apt/lists/*
COPY . .
RUN make deploy

RUN cp config.ini.dist config.ini

# Add startscript and start
ADD start.sh /start.sh

VOLUME /var/www/html/
CMD ["/bin/bash", "/start.sh"]
