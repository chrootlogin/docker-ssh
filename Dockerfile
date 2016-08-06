FROM alpine:3.4
MAINTAINER Simon Erhardt <hello@rootlogin.ch>

RUN apk add --update \
  bash \
  curl \
  openssh \
  && rm -rf /var/cache/apk/*

COPY bin/run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

EXPOSE 22
ENTRYPOINT ["/usr/local/bin/run.sh"]
