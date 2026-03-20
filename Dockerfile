FROM alpine:3.16

ENV TZ=Asia/Shanghai TIME_ZONE=Asia/Shanghai

RUN apk add --no-cache tzdata && \
    /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    apk del tzdata wget && \
    mkdir -p /usr/share/zoneinfo/Asia && \
    mv /etc/localtime /usr/share/zoneinfo/Asia/Shanghai && \
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /var/cache/apk/* /root/.cache /tmp/*

RUN wget https://f-droid.org/repo/org.fedorahosted.freeotp_48.apk -O /freeotp.apk
