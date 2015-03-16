FROM dockerfile/nginx
COPY docker /etc/nginx/sites-enabled
EXPOSE 80
CMD ["nginx"]
