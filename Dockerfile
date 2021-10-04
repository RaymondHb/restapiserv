FROM ubuntu
RUN apt update
RUN apt install git -y
RUN git clone https://github.com/RaymondHb/restapiserv.git
RUN apt-get install openjdk-8-jre
RUN apt install maven -y
RUN cd /restapitutorial
RUN mvn clean install 
RUN cd /target
RUN ls
