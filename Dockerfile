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

# Create a new user and add it to the sudo group with no password
RUN useradd -m -s /bin/bash user && \
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the new user
USER user

# Copy scripts and configuration files
COPY ./scripts/ /opt/
COPY ./system/.bashrc /root/
COPY ./system/.bashrc /home/user/
RUN chmod +x /opt/myip.sh && sudo ln -s /opt/myip.sh /usr/bin/myip

ENTRYPOINT [ "/bin/bash" ]
