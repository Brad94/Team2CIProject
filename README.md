# Team2CIProject

`$ sudo apt update`

`$ sudo apt upgrade -y`

## AWS instance performance

`$ sudo apt install htop git`

## install Java

`$ wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz`

`$ wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jre-8u131-linux-x64.tar.gz`

`$ sudo cp -avr jdk1.8.0_131 jre1.8.0_131`

`$ update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_131/bin/java 100`

`$ update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_131/bin/java 100`

`$ update-alternatives --install /usr/bin/java java /opt/jre1.8.0_131/bin/java 100`

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

`$ mkdir temp`

`$ docker run -p 8080:8080 -p 50000:50000 -v /home/ubuntu/temp:/var/jenkins_home --detach jenkins`

`$ docker run -ti -v /home/ubuntu/temp:/home/info/ jenkins bash`

`$ java -version`

`$ cat /home/info/secrets/initialAdminPassword`

## Docker Jira

`$ docker pull cptactionhank/atlassian-jira`

`$ docker run --detach --publish 8081:8080 cptactionhank/atlassian-jira:latest`

## Linking Jira and MySQL

## Docker Nexus

`$ docker pull sonatype/nexus`

## Docker Zabbix

`$ docker pull zabbix/zabbix-server-mysql`

## GitHub

`$ git clone https://github.com/dsm23/testrepo`

`$ cd game-of-life`

`$ mvn install`

`$ cd gameoflife-web`

`$ mvn jetty:run`

## Remove all exited Docker Containers

`$ docker stop $(docker ps -a -q)`

`$ docker rm $(docker ps -a -q)`

 *[Commands for docker containers](https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes)*
 
 ## Ansible install
 
`$ sudo apt-get install software-properties-common`

`$ sudo apt-add-repository ppa:ansible/ansible`

`$ sudo apt-get update`

`$ sudo apt-get install ansible`

## Tomcat install

`$ docker pull tomcat`

`$  docker run -it --detach -p 8888:8080 tomcat:8.0`