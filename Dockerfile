FROM ubuntu:14.04
MAINTAINER yuji.oshima0x3fd@gmail.com
RUN \
	apt update \
        && apt install -y \
	python-software-properties \
	software-properties-common \
	bzr \
	make \
	python-virtualenv 
RUN bzr -Ossl.cert_reqs=none branch lp:maas-image-builder
WORKDIR maas-image-builder
RUN make install-dependencies
RUN make
