#!/bin/bash
set -e


if [ "$#" -gt 0 ]; then
    exec "$@"
fi

if [ ! -f ${CATALINA_HOME}/conf/Catalina/localhost/labkey.xml ]; then
    sed "s#@@jdbcUser@@#${LABKEY_DB_USER}#g;s#@@jdbcPassword@@#${LABKEY_DB_PASSWORD}#g;s#@@jdbcDriver@@#${LABKEY_DB_DRIVER}#g;s#@@jdbcUrl@@#${LABKEY_DB_URL}#g;s#@@smtpHost@@#localhost#g;s#@@smtpUser@@#Anonymous#g;s#@@smtpPort@@#25#g;s#@@masterEncryptionKey@@#${LABKEY_MASTER_KEY}#g" ${CATALINA_HOME}/conf/Catalina/localhost/labkey.xml.template > ${CATALINA_HOME}/conf/Catalina/localhost/labkey.xml
fi    

exec ${CATALINA_HOME}/bin/catalina.sh run
