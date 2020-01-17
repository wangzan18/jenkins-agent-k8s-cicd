FROM jenkins/jnlp-slave:latest

MAINTAINER wangzan18@126.com

LABEL Description="This is a extend image base from jenkins/jnlp-slave which install maven in it."

USER root

# install maven
RUN wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && \
    tar -zxf apache-maven-3.6.3-bin.tar.gz && \
    mv apache-maven-3.6.3 /usr/local && \
    rm -f apache-maven-3.6.3-bin.tar.gz && \
    ln -s /usr/local/apache-maven-3.6.3/bin/mvn /usr/bin/mvn && \
    ln -s /usr/local/apache-maven-3.6.3 /usr/local/apache-maven

USER jenkins