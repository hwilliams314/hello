FROM openjdk:14-alpine
COPY build/libs/hello-*-all.jar hello.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "hello.jar"]