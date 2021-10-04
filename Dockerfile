FROM ubuntu
RUN apt update
RUN apt install default-jre -y
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN mvn clean install 
RUN cd target
RUN ls
