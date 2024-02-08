FROM alpine:3.19

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache hugo==0.120.4-r0 git==2.43.0-r0 go==1.21.6-r0 openssh==9.6_p1-r0

ENTRYPOINT ["/entrypoint.sh"]
