FROM openjdk:8
MAINTAINER Nico

WORKDIR /root

#add files
ADD epita.jar /root
ADD nohup.out /root
ADD readme.txt /root
ADD start.sh /root
ADD logs.txt /root

#set permissions
RUN chmod +x start.sh

#run server
ENTRYPOINT ./start.sh > logs.txt&

#firewall
EXPOSE 8080
