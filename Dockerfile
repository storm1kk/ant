FROM ubuntu:24.04
LABEL version="0.12"
LABEL maintainer="storm1kk"

RUN apt update && apt install -y \
    curl \
    wget \
    telnet \
    netcat \
    neovim \
    iproute2 \
    dnsutils \
    openssh-client \
    postgresql-client \
    git \
    && rm -rf /var/lib/apt/lists/*
COPY ./scripts/ /opt/
COPY ./system/.bashrc /root/
RUN chmod +x /opt/myip.sh && ln -s /opt/myip.sh /usr/bin/myip

ENTRYPOINT [ "/bin/bash" ]
