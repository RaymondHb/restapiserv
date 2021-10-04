FROM ubuntu
RUN apt update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install git -y
RUN git clone https://github.com/RaymondHb/restapiserv.git 
RUN apt-get install openjdk-8-jre -y
RUN apt install maven -y
RUN ls
RUN cd restapiserv && ls && cd restapitutorial && mvn clean install
RUN ls
