FROM maven as build
ADD ./pom.xml pom.xml
ADD ./src src/
RUN mvn clean package

FROM tomcat
COPY --from=build target/*.war /usr/local/tomcat/webapps/
