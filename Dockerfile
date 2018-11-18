FROM java:8
EXPOSE 8080:9085
RUN mkdir /opt/spring-reactive
VOLUME /tmp
ADD /target/demoReact-0.0.1-SNAPSHOT.jar demoREACT.jar
RUN bash -c 'touch /demoREACT.jar'
ENTRYPOINT ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/demoREACT.jar"]