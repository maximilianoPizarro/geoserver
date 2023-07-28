FROM docker.io/maven:3-openjdk-17 AS builder

COPY . /home/geoserver

COPY /k8s/web.xml /home/geoserver/src/web/app/src/main/webapp/WEB-INF/web.xml 

WORKDIR /home/geoserver

ENV MAVEN_OPTS="-Xmx3489m"

ENV JAVA_TOOL_OPTION="-Xmx3489m"

RUN  cd src && mvn clean install --batch-mode -DskipTests -P minimal

FROM registry.redhat.io/jboss-webserver-5/jws57-openjdk11-openshift-rhel8

COPY --from=builder /home/geoserver/src/web/app/target/geoserver.war /deployments
