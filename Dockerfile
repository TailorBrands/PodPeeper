FROM alpine:3.18.2


RUN apk update && apk add \
  postgresql-client \
  curl \
  nmap \
  curl \
  netcat-openbsd \
  tcpdump \
  bind-tools \
  jq \
  bash \
  bash-completion \
  && apk add --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing/ --no-cache \
  grpcurl \
  wget \
  vim \
  tmux \
  unzip \
  aws-cli 

CMD ["/bin/bash"]
