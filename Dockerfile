FROM ubuntu
EXPOSE 8080
MAINTAINER Sekhar
WORKDIR /app
RUN apt-get update -y && \
    apt-get install git maven -y && \
    git clone https://github.com/sekharbrs/hello-world-java.git && \
    cd hello-world-java && \
    mvn clean package && \
    tar -xvf tomcat10.tar.gz && \
    pwd && ls -ltrh && \ 
    cp  /app/hello-world-java/target/hello-world-1.0-SNAPSHOT.war /app/hello-world-java/apache-tomcat-10.1.34/webapps
