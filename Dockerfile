FROM docker.io/maven:3.9.1 AS builder

COPY . /home/geoserver

COPY /k8s/web.xml /workspace/geoserver/src/web/app/src/main/webapp/WEB-INF/web.xml 

WORKDIR /home/geoserver

RUN  cd src && mvn clean install --batch-mode -DskipTests -P release

FROM registry.redhat.io/jboss-webserver-5/jws57-openjdk11-openshift-rhel8

COPY --from=builder /home/geoserver/src/web/app/target/geoserver.war /deployments
