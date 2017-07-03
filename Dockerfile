FROM debian:jessie-slim
MAINTAINER Erik Rogers <erik.rogers@live.com>

ENV BURST_MINER_VERSION 0.1
ENV BURST_MINER_PACKAGE RC-v$BURST_MINER_VERSION-bin-lin64
ENV BURST_MINER_ZIP ${BURST_MINER_PACKAGE}.zip

# Choose binary release for BurstMiner
ENV BURST_MINER_RELEASE https://github.com/cuthulino/BurstMiner/releases/download/RC-v$BURST_MINER_VERSION/$BURST_MINER_ZIP
ENV BURST_MINER_DIR /opt/burst

RUN apt-get update && apt-get install -y \
  wget \
  unzip

# Download and install BurstMiner
RUN wget $BURST_MINER_RELEASE \
  && unzip $BURST_MINER_ZIP -d $BURST_MINER_DIR \
  && rm $BURST_MINER_ZIP

WORKDIR $BURST_MINER_DIR

# Add execute permission and delete mining config
# NOTE: mining config will be supplied externally
RUN chmod +x burstminer \
  && rm mining.conf

ENV BURST_MINER_DATADIR /mnt/burst
CMD ./burstminer $BURST_MINER_DATADIR/mining.conf
