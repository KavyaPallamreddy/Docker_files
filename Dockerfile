FROM openjdk:11
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.84.tar.gz
RUN mv apache-tomcat-8.5.84/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]


