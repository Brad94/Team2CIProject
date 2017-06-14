# Team2CIProject

`$ sudo apt update`

`$ sudo apt upgrade -y`

## AWS instance performance

`$ sudo apt install htop git`

## install Java

`$ sudo apt install default-jdk default-jre`

## install Maven

`$ sudo apt install maven`

`$ java -version`

`$ mvn -version`

## install Docker

`$ wget -qO- https://get.docker.com/ | sh`

`$ sudo usermod -aG docker ubuntu`

`$ logout`

## Docker Jenkins

`$ docker pull jenkins`

Jenkins requires Maven but it is not a dependency

`$ docker pull maven`

`$ docker run -p 8080:8080 -p 50000:50000 -v /home/ubuntu:/var/jenkins_home --detach jenkins`

`$ docker run -ti jenkins bash`

`$ java -version`

`$ cat /home/ubuntu/secrets/initialAdminPassword`

## Docker Jira

`$ docker pull cptactionhank/atlassian-jira`

`$ docker run --detach --publish 8081:8080 cptactionhank/atlassian-jira:latest`

## GitHub

`$ git clone https://github.com/dsm23/testrepo`

`$ cd game-of-life`

`$ mvn install`

`$ cd gameoflife-web`

`$ mvn jetty:run`

## Remove all exited Docker Containers

`$ docker rm $(docker ps -a -f status=exited -q)`