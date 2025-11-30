<!DOCTYPE html>
<html>
<head>
    <title>Flight Booking</title>
</head>
<body>
<h1>Welcome to the Indian Airlines </h1>
    <p>You can book tickets around the world.</p>

    <h3>Menu </h3>
    <ul>
        <li><a href="register.jsp">Register first</a></li>
        <li><a href="loginpage.jsp">Login (future)</a></li>
    </ul>

</body>
</html>

//minikube version
//minikube start --driver=docker
//minikube status
minikube kubectl -- get pods -A
minikube dashboard
kubectl version --client

minikube automation steps:
minikube start
kubectl create deployment mynginx --image=nginx
kubectl get deployments
kubectl get pods
kubectl describe pods
kubectl expose deployment mynginx --type=NodePort --port=80 --target-port=80
kubectl scale deployment mynginx --replicas=4
kubectl get service
kubectl port-forward svc/mynginx 8081:80


http://localhost:8081.


kubectl get svc --output=wide
minikube service mynginx --url


stop nginx deployment:
kubectl delete deployment mynginx
kubectl delete service mynginx
minikube stop


Nagios Automation steps:
docker pull jasonrivers/nagios:latest
docker run --name nagiosdemo -p 8888:80 jasonrivers/nagios:latest
http://localhost:8888
Username: nagiosadmin
Password: nagios
docker ps -a
docker stop nagiosdemo
docker rm nagiosdemo

pipeline {
    agent any  
    tools {
        maven 'MAVEN-HOME'
    }
    stages {         
        stage('git repo & clean') {
            steps {
                bat "git clone https://github.com/yourname/yourrepo.git"
                bat "mvn clean -f mavenjava"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f mavenjava" 
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f mavenjava"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f mavenjava"
            }
        }
    }
}
docker-compose up –d
 docker-compose down
docker-compose up --scale wordpress=2 -d
docker-compose logs -f
docker ps
docker exec -it mydocker-db-1 mysql -u root -p or docker exec -it mydocker-db-1 mysql -u wp_user -p
show databases;
use wordpress_db
show tables
exit
code:
version: '3.8'
services:
  # Run WordPress Service
  wordpress:
    image: wordpress:latest
    restart: always
    ports:
      - "8081:80"        # Access WordPress at http://localhost:8081
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_USER: wp_user
      WORDPRESS_DB_PASSWORD: wp_pass
      WORDPRESS_DB_NAME: wordpress_db
    depends_on:
      - db
    volumes:
      - wordpress_data:/var/www/html

  # Run MySQL Service
  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword
      MYSQL_DATABASE: wordpress_db
      MYSQL_USER: wp_user
      MYSQL_PASSWORD: wp_pass
    volumes:
      - db_data:/var/lib/mysql

# Persistent Storage
volumes:
  wordpress_data:
  db_data:

Dockerfile:
FROM alpine

# Install Redis without caching to keep the image small
RUN apk add --no-cache redis

# Run Redis server
CMD ["redis-server"]
commands:
docker build -t csmimage:01 .
docker login
docker tag csmimage:01  kumbhambhargavi/secondimage
 docker push kumbhambhargavi/secondimage
https://hub.docker.com/r/pranathibiyyala/secondimage
docker pull kumbhambhargavi/secondimage:latest
docker run -it pranathibiyyala/secondimage
docker pull hello-world:latest
docker images
docker tag hello-world:latest pranathibiyyala/hello-world:latest
docker push pranathibiyyala/hello-world:latest

