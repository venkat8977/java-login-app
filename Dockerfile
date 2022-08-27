FROM tomcat:latest

MAINTAINER Vikram RR

COPY ./webapp.war /usr/local/tomcat/webapps
