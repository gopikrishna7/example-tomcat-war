FROM maven as build
ADD ./pom.xml pom.xml
ADD ./src src/
RUN mvn clean package

FROM tomcat:11.0.18-jdk25-temurin-noble
COPY --from=build target/*.war /usr/local/tomcat/webapps/
