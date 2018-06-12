FROM frolvlad/alpine-oraclejdk8:slim
COPY /cloudsoft/calculator/build/libs/calculator-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
