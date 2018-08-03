FROM frolvlad/alpine-oraclejdk8:slim
ENV JAVA_OPTS=""
VOLUME /tmp
COPY target/dockerize-spring-boot-*.jar dockerize-spring-boot.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /dockerize-spring-boot.jar"]
