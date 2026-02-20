### 1 Images
docker build -t my-app .      # Build
docker images                 # List
docker pull nginx             # Pull
docker rmi <image_id>         # Remove
docker image prune            # Prune
docker history <image>        # History

### 2 Containers
docker run -d -p 80:80 --name web nginx # Run
docker ps                     # List Running
docker ps -a                  # List All
docker stop <container_id>    # Stop
docker start <container_id>   # Start
docker rm <container_id>      # Remove
docker logs -f <container_id> # Logs
docker exec -it <container_id> bash # Exec

### 3 Volumes
docker volume create my-vol   # Create
docker volume ls              # List
docker volume inspect my-vol  # Inspect
docker volume rm my-vol       # Remove
docker run -v my-vol:/data nginx # Mount

### 4 Networks
docker network create my-net  # Create
docker network ls             # List
docker network connect my-net container # Connect
docker run --network my-net nginx # Run
docker network inspect my-net # Inspect

### 5 Docker Compose
docker-compose up -d          # Up
docker-compose down           # Down
docker-compose logs -f        # Logs
docker-compose build          # Build
docker-compose ps             # Ps
docker-compose exec app bash  # Exec

### 6 System
docker system prune           # Prune (Clean up unused data)
docker stats                  # Stats (Live resource usage)
docker info                   # Info
docker events                 # Events

### 7 Dockerfile
FROM node:18                  # Base
WORKDIR /app                  # Workdir
COPY . .                      # Copy
RUN npm install               # Run
ENV NODE_ENV=production       # Env
EXPOSE 3000                   # Expose
CMD ["npm", "start"]          # Cmd

### 8 Registry
docker login                  # Login
docker tag my-img user/repo:tag # Tag
docker push user/repo:tag     # Push
docker logout                 # Logout

### 9 Inspection
docker inspect <id>           # Inspect
docker top <container>        # Top
docker port <container>       # Port

### 10 Save/Load
docker save -o image.tar image # Save
docker load -i image.tar      # Load