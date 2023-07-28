FROM maven:3-jdk-17 AS builder

COPY . /home/geoserver

WORKDIR /home/geoserver

RUN  cd src && mvn clean install --batch-mode -DskipTests -P release

FROM registry.redhat.io/jboss-webserver-5/jws57-openjdk11-openshift-rhel8

COPY --from=builder /home/geoserver/src/web/app/target/geoserver.war /deployments
