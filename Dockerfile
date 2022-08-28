FROM tomcat:9.0

WORKDIR /usr/local/tomcat

User root

RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2

RUN mv /usr/local/tomcat/webapps.dist/ webapps

ADD ./target/dptweb-1.0.war /usr/local/tomcat/webapps/

EXPOSE 9191

CMD ["catalina.sh", "run"]
