FROM dannydirect/tinyproxy

RUN apk add --update iptables curl sudo \
        && addgroup -S app && adduser -S -g app app

COPY iptables.rules /var/
COPY iptabled-run.sh /opt/docker-tinyproxy/

ENTRYPOINT ["/opt/docker-tinyproxy/iptabled-run.sh"]
