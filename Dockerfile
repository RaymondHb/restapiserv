FROM ubuntu
RUN apt update
RUN apt install git-all
RUN git clone https://github.com/RaymondHb/restapiserv.git
RUN apt install default-jre -y
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN cd /restapitutorial
RUN mvn clean install 
RUN cd /target
RUN ls
