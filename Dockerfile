FROM ubuntu:20.04
LABEL version="0.4"
LABEL maintainer="storm1kk"

RUN apt update && apt upgrade -y && apt install -y \
    curl \
    wget \
    telnet \
    tshark \
    s3cmd \
    netcat \
    vim \
    iproute2 \
    dnsutils \
    && rm -rf /var/lib/apt/lists/*
COPY ./scripts/ /opt/
COPY ./system/.bashrc /root/
RUN chmod +x /opt/myip.sh && ln -s /opt/myip.sh /usr/bin/myip

ENTRYPOINT [ "/bin/bash" ]