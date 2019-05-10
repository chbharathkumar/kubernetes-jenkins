FROM tomcat:8.0.20-jre8

COPY pwd/module/target/repo.war /usr/local/tomcat/webapps/
