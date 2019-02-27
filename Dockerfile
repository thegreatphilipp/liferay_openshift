FROM liferay/dxp:7.1.10.1

USER root

RUN chown liferay:root -R /opt/liferay && \
    chmod -R g+w /opt/liferay/** && \
    chmod g+x /opt/liferay/tomcat/bin/*.sh

USER liferay
