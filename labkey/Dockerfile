# TODO: use jdk12 when available from docker hub
FROM tomcat:9.0-jdk11

ARG labkey_tarball

ENV LABKEY_HOME=/usr/local/labkey

# Download Labkey tgz and unpack it
RUN mkdir -p ${CATALINA_HOME}/conf/Catalina/localhost \
 && mkdir -p $LABKEY_HOME \
 && cd ${LABKEY_HOME} \
 && wget --quiet -O labkey.tar.gz $labkey_tarball \
 && tar -zxf labkey.tar.gz --strip-components=1 \
 && mv tomcat-lib/*.jar ${CATALINA_HOME}/lib/ \
 && rm -rf labkey.tar.gz manual-upgrade.sh tomcat-lib labkey.xml

COPY ./labkey.xml.template ${CATALINA_HOME}/conf/Catalina/localhost/
RUN sed -i "s#@@appDocBase@@#${LABKEY_HOME}/labkeywebapp#" ${CATALINA_HOME}/conf/Catalina/localhost/labkey.xml.template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

