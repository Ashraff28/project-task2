FROM node:14


RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]