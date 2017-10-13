FROM sentry:8.21.0

MAINTAINER Krennic

RUN apt-get update &&\
	apt-get install -y \
	python-dev \
	libldap2-dev \
	libsasl2-dev \
	libssl-dev \
	nano \
	&& rm -rf /var/lib/apt/lists/* && \
	pip install sentry-plugins sentry-ldap-auth