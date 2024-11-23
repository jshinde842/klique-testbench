FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/klique-testbench-0.0.1-SNAPSHOT.jar /app/klique-testbench.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "klique-testbench.jar"]
