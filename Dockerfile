FROM openjdk:8-jdk-alpine
# Add Maintainer Info
MAINTAINER Iqbal Hosain Khan <iqbaliem84@gmail.com>

ARG JAR_FILE=target/find-links.jar
ARG JAR_LIB_FILE=target/lib/

# cd /usr/local/apps/corejava
WORKDIR /usr/local/apps/corejava

# cp target/find-links-app.jar /usr/local/apps/corejava/find-links-app.jar
COPY ${JAR_FILE} find-links-app.jar

# cp -rf target/lib/  /usr/local/apps/corejava/lib
ADD ${JAR_LIB_FILE} lib/

# java -jar /usr/local/apps/corejava/find-links-app.jar
ENTRYPOINT ["java","-jar","find-links-app.jar"]