FROM ubuntu:20.04
LABEL version="0.1"
LABEL maintainer="storm1kk"

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    nc \
    tshark \
    s3cmd \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash" ]