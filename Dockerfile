FROM tomcat:8.5.5-jre8

LABEL maintainer="rick@ricktbaker.com"

COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY conf/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

#COPY webapps/dockersetup.war /usr/local/tomcat/webapps/
ADD  https://github.com/karthikvemula/rock-paper-scissors/actions/runs/2020929697#artifacts/roshambo-1.0-SNAPSHOT.jar/roshambo-1.0-SNAPSHOT /usr/local/tomcat/webapps/


EXPOSE 5000

WORKDIR /usr/local/tomcat
