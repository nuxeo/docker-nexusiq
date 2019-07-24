FROM sonatype/nexus-iq-server:1.69.0

USER root

ADD config.yml /etc/nexus-iq-server/
ADD postStart.sh /postStart.sh
