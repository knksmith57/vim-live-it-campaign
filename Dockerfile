FROM alpine:3.2

RUN apk add --update nginx \
      && rm -rf /var/cache/apk/*

ADD build/nginx.conf  /etc/nginx/nginx.conf
ADD app/public        /usr/share/nginx/html
ADD CHECKS            /app/CHECKS

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
