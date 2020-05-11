FROM tomcat:9.0

RUN echo 'Deploying War on Server'

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./hotelmanagement.war  /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
