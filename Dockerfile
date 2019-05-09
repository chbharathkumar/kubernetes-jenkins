FROM openjdk:8u212-jdk 
RUN mkdir -p /tomcat
RUN wget http://mirrors.ibiblio.org/apache/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar -xzf apache-tomcat-8.5.40.tar.gz -C /tomcat
ENV CATALINA_HOME /tomcat/apache-tomcat-8.5.40
ENV PATH $PATH:$CATALINA_HOME/bin
COPY pwd/target/*.war $CATALINA_HOME/webapps/
EXPOSE 8080
CMD ["/tomcat/apache-tomcat-8.5.40/bin/catalina.sh", "run"]
