# Install docker and docker-compose

Windows 10: https://docs.docker.com/docker-for-windows/

OSX: https://docs.docker.com/docker-for-mac/


# Edit .env
change the `LABKEY_` prefixed runtime environment variables

# Start services
```docker-compose up```

Once the application is started up go to `http://localhost:8080/labkey` in your browser.

# Custom modules
Custom modules can be placed in the externalModules directory and they will be be deployed when the application starts up.


# Change Log:
* **20.11.0.1** 2021-02-23
  * updated .env to use the 20.11.0.1 Community Edition tarball from 19.1.1
  * Base tomcat image changes from 9.0-jdk11 to 9.0-jdk15-openjdk.
  * Change postgres image from 9.6 to 12
  * Remove LABKEY_REVISION variable from docker-compose.yml; artifact of SVN, no longer used with Git
* **19.1.1** 2019-06-07
  * updated .env file to use the 19.1.1 Community Edition tarball from 18.2.
  * Base tomcat image changes from 8.5 to 9.0-jdk11
* **19.2.0** 2019-08-05
  * updated .env file to use the 19.2.0 Community Edition
  * Changed labkey base image from tomcat:9.0-jdk11 to tomcat:9.0-jdk12-adoptopenjdk-hotspot
  * Added Labkey binary sha512 checksum check
  * fixed volume labels
* **19.3.0** 2020-01-27
  * updated .env file to use the 19.3.0 Community Edition
  * set the JVM memory to 2G via CATALINA_OPTS environment variable in docker-compose.yml
