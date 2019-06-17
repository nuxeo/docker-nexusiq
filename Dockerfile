FROM sonatype/nexus-iq-server

USER root

ADD nexus_license.lic /
ADD config.yml /etc/nexus-iq-server/

RUN printf "licenseFile: /test.lic" >> /etc/nexus-iq-server/config.yml
