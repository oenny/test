FROM dockerfile/nginx

COPY docker /data/www/
COPY nginx.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx"]
