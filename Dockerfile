FROM openjdk:11.0.8

ENV URL 127.0.0.1/tp_devops
ENV USERNAME tp_devops
ENV PASSWORD tp_devops

COPY build/libs/tp-docker-1.0.0.jar .

ENTRYPOINT java -Ddatabase.url="127.0.0.1:5432/tp_devops" -Ddatabase.username="tp_devops" -Ddatabase.password="tp_devops" -jar tp-docker-1.0.0.jar
EXPOSE 8080
