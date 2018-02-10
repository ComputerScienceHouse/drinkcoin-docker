FROM centos:7
MAINTAINER Steven Mirabito <smirabito@csh.rit.edu>

ENV DRINKCOIN_VERSION=1.0.0 \
    DAEMON_HOST=daemon \
    DAEMON_PORT=42068

RUN set -ex && \
    cd /opt && \
    curl -fsSLO https://github.com/ComputerScienceHouse/drinkcoin/releases/download/v${DRINKCOIN_VERSION}/drinkcoin-v${DRINKCOIN_VERSION}-linux.tar.gz && \
    tar -xf drinkcoin-v${DRINKCOIN_VERSION}-linux.tar.gz && \
    rm -f *.tar.gz connectivity_tool miner simplewallet drinkcoind && \
    adduser --system --home-dir /data drinkcoin && \
    mkdir /data /wallet && \
    chown drinkcoin:drinkcoin /data /wallet && \
    chmod og+rwx /data /wallet

COPY entrypoint.sh /opt/

WORKDIR /opt
USER drinkcoin

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
