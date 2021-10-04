FROM ubuntu
RUN apt update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install git -y
RUN git clone https://github.com/RaymondHb/restapiserver.git 
RUN apt install default-jre -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN ls
RUN cd restapiserver && ls && cd restapitutorial && mvn clean install && cd target && ls
CMD nohup java -jar restapiserver/restapitutorial/target/restapitutorial-0.0.1-SNAPSHOT.jar </dev/null &>/dev/null &
EXPOSE 8080
