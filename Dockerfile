FROM openjdk:8-alpine
ARG profile
RUN ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime
ADD target/*.jar /app.jar
RUN echo "java -jar -Dspring.profiles.active=$profile /app.jar" >> run.sh
RUN chmod +x run.sh
CMD ./run.sh
