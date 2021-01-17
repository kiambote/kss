FROM nginx:stable
COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 80
EXPOSE 443