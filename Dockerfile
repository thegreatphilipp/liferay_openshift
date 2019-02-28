FROM liferay/dxp:7.1.10.1

USER root
COPY license.xml /opt/liferay/deploy/license.xml

RUN chown liferay:root /opt/liferay/deploy/license.xml && \
	chown liferay:root -R /opt/liferay && \
    chmod -R g+w /opt/liferay/** && \
    chmod g+x /opt/liferay/tomcat/bin/*.sh

USER liferay
