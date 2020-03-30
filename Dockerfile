FROM maven:3.3.9-jdk-8 as builder
RUN apt-get install -y curl
RUN mkdir /mnt/workspace
COPY . /mnt/workspace
WORKDIR /mnt/workspace
RUN mvn clean install

FROM anapsix/alpine-java:latest
COPY --from=builder /mnt/workspace/./target/Consumer-0.0.1-SNAPSHOT.jar /Consumer-0.0.1-SNAPSHOT.jar
CMD java -jar /Consumer-0.0.1-SNAPSHOT.jar
