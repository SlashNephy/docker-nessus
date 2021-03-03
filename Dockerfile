FROM ubuntu

COPY packages/Nessus-8.13.1-ubuntu1110_amd64.deb /tmp/Nessus.deb

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        net-tools \
        iputils-ping \
        tzdata \
    \
    # Install
    dpkg -i /tmp/Nessus.deb \
    \
    # Clean
    && apt-get clean \
    && rm -rf \
        /tmp/Nessus.deb \
        /var/lib/apt/lists/*

EXPOSE 8834
ENTRYPOINT [ "/opt/nessus/sbin/nessusd" ]
