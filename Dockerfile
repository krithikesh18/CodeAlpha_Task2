FROM nginx:latest

LABEL maintainer="krithikeshk18@gmail.com"
LABEL version="1.0"
LABEL description="Custom Nginx Web Server - Task 4"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
