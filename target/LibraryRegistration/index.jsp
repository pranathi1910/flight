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


