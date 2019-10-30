FROM alpine:3.10

# get latest release of papertrail's remote_syslog2
RUN wget -O /opt/remote_syslog.tar.gz https://github.com/papertrail/remote_syslog2/releases/download/v0.20/remote_syslog_linux_amd64.tar.gz \
    && cd /opt \
    && tar xvf remote_syslog.tar.gz \
    && mv /opt/remote_syslog/remote_syslog /usr/bin/remote_syslog

COPY ./start-remote-syslog.sh /usr/bin/start-remote-syslog.sh

# by default, remote_syslog will monitor the /log directory. you can mount this to a volume or bind in
CMD ["/usr/bin/start-remote-syslog.sh"]