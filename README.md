# CodeAlpha_Tasks

# Web Server using Docer — Task 2

Custom Nginx web server deployed inside a Docker container on AWS EC2.

## Project Overview

| Item | Details |
|------|---------|
| Base Image | nginx:latest |
| Port | 8082 (host) → 80 (container) |
| Platform | AWS EC2 — Ubuntu 22.04 |
| Author | Krithikesh K |

## Files

- `Dockerfile` — Custom image build instructions
- `index.html` — Web page served by Nginx

## How to Run

cd docker-webserver-task4

docker build -t krithik-webserver:v1 .
docker run -d --name krithik-web -p 8082:80 krithik-webserver:v1
```

Access in browser: http://51.20.76.136:8082

## Docker Commands Used

```bash
docker build -t krithik-webserver:v1 .
docker run -d --name krithik-web -p 8082:80 krithik-webserver:v1
docker ps
docker logs krithik-web
docker stats krithik-web
docker stop krithik-web
docker rm krithik-web
```

## Dockerfile Overview

```dockerfile
FROM nginx:latest

LABEL maintainer="krithikeshk18@gmail.com"
LABEL version="1.0"
LABEL description="Custom Nginx Web Server - Task 4"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
```

## Features

- Custom HTML page served via Nginx
- HEALTHCHECK configured (checks every 30s)
- Proper EXPOSE and CMD directives
- Lightweight image based on official nginx base
- Container health monitored via `docker inspect`

## Learning Outcomes

- Docker containerization fundamentals
- Building custom images with Dockerfile
- Container lifecycle management (start/stop/restart/remove)
- Health check configuration and monitoring
- Port mapping and container networking

## 👤 Author

**Krithikesh K**
DevOps & Cloud Engineering | AWS DevOps Certified
📧 krithikeshk18@gmail.com
🔗 [GitHub](https://github.com/krithikesh18) | [LinkedIn](https://linkedin.com/in/krithikesh-k-a591a9348)
