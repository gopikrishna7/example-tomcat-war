FROM tomcat:8.0.20-jre8
COPY target/SimpleTomcatWebApp.war /usr/local/tomcat/webapps/
