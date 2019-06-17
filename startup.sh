#! /bin/bash -xe

docker volume create --name sonatype-work
docker build -f Dockerfile -t nuxeo-iq-server .
docker run -d -p 8070:8070 -p 8071:8071 --name nuxeo-iq-server -v sonatype-work:/sonatype-work nuxeo-iq-server
