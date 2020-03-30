FROM anapsix/alpine-java:latest
COPY ./Consumer-0.0.1-SNAPSHOT.jar /Consumer-0.0.1-SNAPSHOT.jar
CMD java -jar /Consumer-0.0.1-SNAPSHOT.jar
