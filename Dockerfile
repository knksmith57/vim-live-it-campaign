FROM nginx:1-alpine

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1

EXPOSE 3000

ADD nginx.conf  /etc/nginx/nginx.conf
ADD app/public  /usr/share/nginx/html
