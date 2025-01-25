FROM nginx:1.27.3-alpine

COPY ./app /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]