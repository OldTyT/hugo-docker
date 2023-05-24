FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh

ARG BASEURL=BASEURL

ENV BASEURL=$BASEURL

RUN apk add --no-cache hugo curl && chmod +x /entrypoint.sh

HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -IL 127.0.0.1 | grep 200 || exit 1

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
