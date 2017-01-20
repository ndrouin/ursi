FROM openjdk:8
MAINTAINER Nico

WORKDIR /root

#add files
ADD epita.jar
ADD nohup.out
ADD readme.txt
ADD start.sh
ADD logs.txt

#set permissions
RUN chmod +x start.sh

#run server
ENTRYPOINT ./start.sh > logs.txt&

