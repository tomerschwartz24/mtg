from  nginx:mainline-alpine3.18-slim

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

