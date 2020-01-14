# About / Synopsis

This directory contains the docker definition of the Nuxeo NexusIQ image

Its purpose is to be deployed in the devtools private docker registry and be
used with kubernetes alongside the Nuxeo Sonatype docker image


# Usage

## Content

docker buildtime related files

## Requirements

Have docker installed


## Build

```bash
export NEXUSIQ_VERSION=3.19.1
export SCM_REF=`git id`
export VERSION=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
export DESCRIPTION=<DESCRIPTION>

echo $NEXUSIQ_VERSION $(git rev-parse --short HEAD) $VERSION $DOCKER_REGISTRY
docker build --build-arg NEXUSIQ_VERSION --build-arg VERSION --build-arg SCM_REF --build-arg DESCRIPTION \
    -t devtools/nexusiq:$VERSION .
```

## Deploy on Nuxeo Private Docker Registry

```bash
docker tag localhost:5000/devtools/nexusiq:$VERSION dockerpriv.nuxeo.com/devtools/nexusiq:central
docker push dockerpriv.nuxeo.com/devtools/nexusiq:central
```

# License

[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html)

# About Nuxeo

The [Nuxeo Platform](http://www.nuxeo.com/products/content-management-platform/) is an
open source customizable and extensible content management platform for
building business applications. It provides the foundation for developing
[document management](http://www.nuxeo.com/solutions/document-management/),
[digital asset management](http://www.nuxeo.com/solutions/digital-asset-management/), 
[case management application](http://www.nuxeo.com/solutions/case-management/) and
[knowledge management](http://www.nuxeo.com/solutions/advanced-knowledge-base/). You can
easily add features using ready-to-use addons or by extending the platform
using its extension point system.

The Nuxeo Platform is developed and supported by Nuxeo, with contributions from
the community.

Nuxeo dramatically improves how content-based applications are built, managed
and deployed, making customers more agile, innovative and successful. Nuxeo
provides a next generation, enterprise ready platform for building traditional
and cutting-edge content oriented applications. Combining a powerful
application development environment with
SaaS-based tools and a modular architecture, the Nuxeo Platform and Products
provide clear business value to some of the most recognizable brands including
Verizon, Electronic Arts, Sharp, FICO, the U.S. Navy, and Boeing. Nuxeo is
headquartered in New York and Paris.
More information is available at [www.nuxeo.com](http://www.nuxeo.com).
