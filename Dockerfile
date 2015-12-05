FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="0xDBE" org.kurron.ide.version=preview

ADD http://download.jetbrains.com/dbe/0xdbe-143.1040.1.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/ide && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/ide && \
    rm /tmp/ide.tar.gz

ENV dbe_JDK=/usr/lib/jvm/oracle-jdk-8

USER developer:developer
WORKDIR /home/developer
ENTRYPOINT ["/opt/ide/bin/0xdbe.sh"]
