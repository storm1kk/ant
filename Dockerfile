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
    && rm -rf /var/lib/apt/lists/*
COPY ./scripts/ /opt/
RUN ln -s /opt/myip.sh /usr/bin/myip
RUN export PS1='\[\e[0;31m\]\u\e[0;32m@\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ '
ENTRYPOINT [ "/bin/bash" ]