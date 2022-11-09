FROM 122939799774.dkr.ecr.eu-west-1.amazonaws.com/car-carrage:latest as builder
#FROM adoptopenjdk/maven-openjdk11 as builder
WORKDIR /app
COPY . /app 
RUN mvn clean install 

#FROM 122939799774.dkr.ecr.eu-west-1.amazonaws.com/car-carrage-2:11-jre-hotspot
#FROM adoptopenjdk:11-jre-hotspot
#WORKDIR /app
#ARG JAR_FILE=/app/target/*.jar
#COPY --from=builder $JAR_FILE /app/app.jar

EXPOSE 8093
CMD ["java", "-jar", "/app/app.jar"]