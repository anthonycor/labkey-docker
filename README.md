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
