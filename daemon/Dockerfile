FROM centos:7
MAINTAINER Steven Mirabito <smirabito@csh.rit.edu>

ENV DRINKCOIN_VERSION=1.0.0

RUN set -ex && \
    cd /opt && \
    curl -fsSLO https://github.com/ComputerScienceHouse/drinkcoin/releases/download/v${DRINKCOIN_VERSION}/drinkcoin-v${DRINKCOIN_VERSION}-linux.tar.gz && \
    tar -xf drinkcoin-v${DRINKCOIN_VERSION}-linux.tar.gz && \
    rm -f *.tar.gz connectivity_tool miner simplewallet walletd && \
    adduser --system --home-dir /data drinkcoin && \
    mkdir /data && \
    chown drinkcoin:drinkcoin /data && \
    chmod og+rwx /data

WORKDIR /opt/drinkcoin
USER drinkcoin

CMD ["/opt/drinkcoind", "--rpc-bind-ip", "0.0.0.0", "--enable-cors", "--enable-blockexplorer", "--data-dir", "/data"]
