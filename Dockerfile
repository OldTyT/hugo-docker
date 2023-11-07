FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache hugo git go openssh

ENTRYPOINT ["/entrypoint.sh"]
