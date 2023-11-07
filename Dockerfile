FROM alpine:3.18

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache hugo==0.111.3-r5 git==2.40.1-r0 go==1.20.10-r0 openssh==9.3_p2-r0

ENTRYPOINT ["/entrypoint.sh"]
