FROM dockerfile/nginx
# COPY docker /data/www/
# COPY nginx.conf /etc/nginx/
EXPOSE 80
CMD ["nginx"]
