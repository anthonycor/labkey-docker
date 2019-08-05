FROM tomcat:9.0-jdk12-adoptopenjdk-hotspot

ARG labkey_binary_url
ARG labkey_sha512

ENV LABKEY_HOME=/usr/local/labkey

RUN set -eux; \
    mkdir -p ${CATALINA_HOME}/conf/Catalina/localhost; \
    mkdir -p $LABKEY_HOME; \
    cd ${LABKEY_HOME}; \
    curl -LfsSo labkey.tar.gz $labkey_binary_url; \
    echo "$labkey_sha512 *labkey.tar.gz" | sha512sum --strict --check -; \
    tar -zxf labkey.tar.gz --strip-components=1; \
    mv tomcat-lib/*.jar ${CATALINA_HOME}/lib/; \
    rm -rf labkey.tar.gz manual-upgrade.sh tomcat-lib labkey.xml;

COPY ./labkey.xml.template ${CATALINA_HOME}/conf/Catalina/localhost/
RUN sed -i "s#@@appDocBase@@#${LABKEY_HOME}/labkeywebapp#" ${CATALINA_HOME}/conf/Catalina/localhost/labkey.xml.template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

