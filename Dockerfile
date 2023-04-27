FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh

ARG BASEURL=BASEURL

ENV BASEURL=$BASEURL

RUN apk add --no-cache hugo curl nginx && chmod +x /entrypoint.sh

COPY nginx.conf /etc/nginx/nginx.conf

HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1:80 || exit 1

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
