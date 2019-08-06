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
* **19.1.1** 2019-06-07
  * updated .env file to use the 19.1.1 Community Edition tarball from 18.2. 
  * Base tomcat image changes from 8.5 to 9.0-jdk11
* **19.2.0** 2019-08-05
  * updated .env file to use the 19.2.0 Community Edition
  * Changed labkey base image from tomcat:9.0-jdk11 to tomcat:9.0-jdk12-adoptopenjdk-hotspot
  * Added Labkey binary sha512 checksum check
  * fixed volume labels
