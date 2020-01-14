ARG NEXUSIQ_VERSION=1.69.0
FROM sonatype/nexus-iq-server:${NEXUSIQ_VERSION}

ARG NEXUSIQ_VERSION
ARG VERSION=0.1-SNAPSHOT
ARG SCM_REF=unknown
ARG SCM_REPOSITORY=git@github.com:nuxeo/docker-nexusiq.git
ARG DESCRIPTION="Nuxeo Custom Nexus IQ"

USER root

ADD config.yml /etc/nexus-iq-server/
ADD postStart.sh /postStart.sh

LABEL description=${DESCRIPTION}
LABEL version=${VERSION}
LABEL scm-ref=${SCM_REF}
LABEL scm-url=${SCM_REPOSITORY}
LABEL com.sonatype.version=${NEXUSIQ_VERSION}
