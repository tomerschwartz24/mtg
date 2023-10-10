from  nginx:mainline-alpine3.18-slim


COPY webapp-content /usr/share/nginx/html/


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

