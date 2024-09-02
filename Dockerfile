FROM alpine:3.20.2

RUN apk update && apk add \
  postgresql-client \
  curl \
  tar \
  coreutils \
  nmap \
  netcat-openbsd \
  tcpdump \
  bind-tools \
  jq \
  bash \
  bash-completion \
  && apk add --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing/ --no-cache \
  grpcurl \
  vim \
  tmux \
  aws-cli \
  redis \
  go \
  ruby \
  nodejs \
  neovim \
  git \
  zip \
  gzip \
  kubectl \
  screen \
  bat

ENV EDITOR=nvim

## Cilium 
RUN CILIUM_CLI_VERSION=$(curl -s https://raw.githubusercontent.com/cilium/cilium-cli/main/stable.txt) && \
    CLI_ARCH=amd64 && \
    if [ "$(uname -m)" = "aarch64" ]; then CLI_ARCH=arm64; fi && \
    curl -L --fail --remote-name-all https://github.com/cilium/cilium-cli/releases/download/${CILIUM_CLI_VERSION}/cilium-linux-${CLI_ARCH}.tar.gz && \
    curl -L --fail --remote-name-all https://github.com/cilium/cilium-cli/releases/download/${CILIUM_CLI_VERSION}/cilium-linux-${CLI_ARCH}.tar.gz.sha256sum && \
    sha256sum -c cilium-linux-${CLI_ARCH}.tar.gz.sha256sum && \
    tar xzvfC cilium-linux-${CLI_ARCH}.tar.gz /usr/local/bin && \
    rm cilium-linux-${CLI_ARCH}.tar.gz cilium-linux-${CLI_ARCH}.tar.gz.sha256sum

CMD ["/bin/bash"]
