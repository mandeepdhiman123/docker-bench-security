# REPOSITORY https://github.com/fatherlinux/docker-bench-security

FROM centos:7

MAINTAINER maddy

RUN yum install -y docker iproute audit procps-ng; yum clean all

RUN mkdir /docker-bench-security

COPY . /docker-bench-security

WORKDIR /docker-bench-security

ENTRYPOINT ["/bin/sh", "docker-bench-security.sh", "-l", "/tmp/docker.log"]
