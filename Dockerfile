FROM alpine
RUN apk add --update nodejs npm
RUN npm install -g http-server
WORKDIR /var/www/html
COPY .  /var/www/html
EXPOSE 8080
ENTRYPOINT ["http-server", "-p", "8080"]