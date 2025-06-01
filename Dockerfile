FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
