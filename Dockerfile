FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="Charles Proxy" org.kurron.ide.version=3.11.2

ADD https://www.charlesproxy.com/assets/release/3.11.2/charles-proxy-3.11.2.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/ide && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/ide && \
    rm /tmp/ide.tar.gz

USER developer:developer
WORKDIR /home/developer
ENTRYPOINT ["/opt/ide/bin/charles"]
