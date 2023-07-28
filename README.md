# GeoServer v2.23.2 OAuth 2.0 OpenID Connect Runnable GitPod

<p align="left">
<img src="https://img.shields.io/badge/redhat-CC0000?style=for-the-badge&logo=redhat&logoColor=white" alt="Redhat">
<img src="https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white" alt="kubernetes">
<img src="https://img.shields.io/badge/docker-0db7ed?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
<img src="https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="shell">  
</p>

<img src="https://raw.githubusercontent.com/geoserver/geoserver/a115127de02689d0c864659a7dd0f708db7d1b61/doc/en/themes/geoserver/static/GeoServer_500.png" width="353">

[![Gitter](https://badges.gitter.im/geoserver/geoserver.svg)](https://gitter.im/geoserver/geoserver?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![DOI](https://zenodo.org/badge/2751199.svg)](https://zenodo.org/badge/latestdoi/2751199)

[GeoServer](https://geoserver.org) is an open source software server written in Java that 
allows users to share and edit geospatial data. Designed for interoperability, it publishes data from 
any major spatial data source using open standards.

Being a community-driven project, GeoServer is developed, tested, and supported by a diverse group of 
individuals and organizations from around the world.

GeoServer is the reference implementation of the Open Geospatial Consortium (OGC) 
Web Feature Service (WFS) and Web Coverage Service (WCS) standards, as well as a high performance 
certified compliant Web Map Service (WMS), compliant Catalog Service for the Web (CSW)
and implementing Web Processing Service (WPS). 
GeoServer forms a core component of the Geospatial Web.

## License

GeoServer licensed under the [GPL](https://docs.geoserver.org/latest/en/user/introduction/license.html).

## Using

Please refer to the [user guide](https://docs.geoserver.org/latest/en/user/) for information
on how to install and use GeoServer.

## Building

GeoServer uses [Apache Maven](https://maven.apache.org/) for a build system. To 
build the application run maven from the ```src``` directory.

    cd src
    mvn clean install -DskipTests -P allExtensions,release
    cd web/app
    mvn jetty:run

See the [developer guide](https://docs.geoserver.org/latest/en/developer/) 
for more details.

## Version

| Entrada              | Imagen | Descripción                                    |
|----------------------|-------------------|------------------------------------------------|
| Jboss Tomcat 9       | openshift/webserver53-openjdk11-tomcat9-openshift-rhel7:1.0-6.1601409310             | Java JDK 11.                           |
| Java Build     | openshift/maven:3-jdk-17             | Maven JDK 17             |


## Environment

| Entrada              | Valor por defecto | Descripción                                    |
|----------------------|-------------------|------------------------------------------------|
| JDK_JAVA_OPTIONS       | -Xms1G -Xmx2G -XX:-UseGCOverheadLimit -XX:-ExitOnOutOfMemoryError -XX:+UseParallelGC -Dfile.encoding=UTF8 -Duser.timezone=America/Buenos_Aires             | Requerido para runtime.                           |
| GEOSERVER_DATA_DIR     | /deployment/geoserver/data             | Cambiar a /home/jboss/data, almacenamiento workspace admin inicial.             |
| CORS_ENABLED | false             | cambiar a true para consultas por api rest.                     |
| CORS_ALLOWED_METHODS            | desactivado             | Agregar GET,POST,PUT,HEAD,OPTIONS                                  |
| SKIP_DEMO_DATA                | true             | para activar la sección de demo              |
| GEOSERVER_CSRF_WHITELIST                | vacio             | lista de dns permitidos              |
| PROXY_BASE_URL            | http://localhost:8080/geoserver             | URL proyecto + path o proxy reverse.                                  |

## Plugins

Agregar requeridas en dependencies en source/src/web/app/pom.xml

## Screenshot
<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/geoserver/2.23.2-oauth-openid-connect-gitpod-runnable-enviroment/screenshot/gitpod-capture-0.PNG?raw=true" width="684" title="Run On GitPod">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/geoserver/2.23.2-oauth-openid-connect-gitpod-runnable-enviroment/screenshot/gitpod-capture.PNG?raw=true" width="684" title="Run On GitPod">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/geoserver/2.23.2-oauth-openid-connect-gitpod-runnable-enviroment/screenshot/gitpod-capture-1.PNG?raw=true" width="684" title="Run On GitPod">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/geoserver/2.23.2-oauth-openid-connect-gitpod-runnable-enviroment/screenshot/gitpod-capture-2.PNG?raw=true" width="684" title="Run On GitPod">    
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/geoserver/2.23.2-oauth-openid-connect-gitpod-runnable-enviroment/screenshot/gitpod-capture-3.PNG?raw=true" width="684" title="Run On Openshift">
    <img src="https://raw.githubusercontent.com/maximilianoPizarro/geoserver/2.23.2-oauth-openid-connect-gitpod-runnable-enviroment/screenshot/gitpod-capture-4.PNG?raw=true" width="684" title="Run On GitPod">
  
</p>  

## Bugs

GeoServer uses [JIRA](https://osgeo-org.atlassian.net/projects/GEOS), hosted by 
[Atlassian](https://www.atlassian.com/), for issue tracking.

## Mailing Lists

The [mailing list page](https://geoserver.org/comm/) on the GeoServer web site provides
access to the various mailing list, as well as some indication of the [code of conduct](https://geoserver.org/comm/userlist-guidelines.html) when posting to the lists

## Contributing

Please read [the contribution guidelines](https://github.com/geoserver/geoserver/blob/main/CONTRIBUTING.md) before contributing pull requests to the GeoServer project.

## More Information

Visit the [website](https://geoserver.org/) or read the [docs](https://docs.geoserver.org/). 

