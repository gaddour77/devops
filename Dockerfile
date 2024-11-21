FROM openjdk:17-jdk

LABEL authors="koussaykouki"

EXPOSE 8089


ADD target/tp-foyer-5.0.0.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]