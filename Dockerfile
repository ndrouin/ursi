FROM centos:7 
MAINTAINER Nico

WORKDIR /root

#change sh to bash
RUN yum update -y
RUN yum install java-1.8.0-openjdk -y

#add files
ADD epita.jar /root
ADD nohup.out /root
ADD readme.txt /root
ADD start.sh /root
ADD logs.txt /root
ADD entrypoint.sh /root

#set permissions
RUN chmod +x start.sh
RUN chmod +x entrypoint.sh

#run server
ENTRYPOINT /root/entrypoint.sh

#firewall
EXPOSE 8080
