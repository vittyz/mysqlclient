FROM alpine:3.4

ENV http_proxy http://10.1.1.10:8080
ENV https_proxy http://10.1.1.10:8080
RUN env
RUN set | grep proxy


RUN apk add --update mysql-client && apk add bash&& rm -rf /var/cache/apk/* 

VOLUME /app

WORKDIR /app

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh


ENTRYPOINT [ "/opt/bin/entry_point.sh" ]


