FROM tomcat:8.0.20-jre8
COPY target/exec-war.war /usr/local/tomcat/webapps/exec-war.war