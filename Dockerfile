FROM ubuntu:22.04

RUN apt update && apt install -y rsyslog

CMD ["/bin/bash", "-c", "echo 'module(load=\"imtcp\") input(type=\"imtcp\" port=\"514\") *.* /dev/stdout' > /etc/rsyslog.conf && rsyslogd -n"]