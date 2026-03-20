FROM docker.m.daocloud.io/library/alpine:3.16

RUN wget https://f-droid.org/repo/org.fedorahosted.freeotp_48.apk -O /freeotp.apk
