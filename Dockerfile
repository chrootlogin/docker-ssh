FROM alpine:3.4
MAINTAINER Simon Erhardt <hello@rootlogin.ch>

RUN apk add --update \
  bash \
  curl \
  ssh \
  && rm -rf /var/cache/apk/*

EXPOSE 22
ENTRYPOINT ["/bin/sshd"]
