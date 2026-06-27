FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/nginx.conf

COPY index.html /var/www/html/index.html
#Y styles.css /var/www/html/style.css

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]`