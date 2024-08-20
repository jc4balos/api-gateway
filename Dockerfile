FROM amazoncorretto:17
EXPOSE 8082
COPY target/*.jar /api_gateway_service.jar
COPY .env /
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "api_gateway_service.jar"]