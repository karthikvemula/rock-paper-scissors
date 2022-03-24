FROM tomcat:8.5.5-jre8

LABEL maintainer="kartheekvemula001@gmail.com"

COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY conf/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

#COPY webapps/dockersetup.war /usr/local/tomcat/webapps/
ADD  https://github.com/karthikvemula/rock-paper-scissors/actions/runs/2020929697#artifacts/jarfile/roshambo-1.0-SNAPSHOT /usr/local/tomcat/webapps/


EXPOSE 80

WORKDIR /usr/local/tomcat
