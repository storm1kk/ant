FROM ubuntu:24.04
LABEL version="0.13"
LABEL maintainer="storm1kk"

RUN apt update && apt install -y \
    curl \
    wget \
    telnet \
    ncat \
    vim \
    iproute2 \
    dnsutils \
    openssh-client \
    postgresql-client \
    git \
    sudo \
    && rm -rf /var/lib/apt/lists/*

COPY ./scripts/ /opt/
COPY ./system/.bashrc /root/
RUN chmod +x /opt/myip.sh && sudo ln -s /opt/myip.sh /usr/bin/myip

# Create a new user and add it to the sudo group with no password
RUN useradd -m -u 1001 -s /bin/bash player1 && \
    echo "player1 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the new user
USER 1001

# Copy scripts and configuration files
COPY ./system/.bashrc /home/player1/


ENTRYPOINT [ "/bin/bash" ]
