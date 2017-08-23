FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="Charles Proxy" org.kurron.ide.version=4.1.5

ADD https://www.charlesproxy.com/assets/release/4.1.4/charles-proxy-4.1.4.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/ide && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/ide && \
    rm /tmp/ide.tar.gz

USER developer:developer
WORKDIR /home/developer
ENTRYPOINT ["/opt/ide/bin/charles"]
