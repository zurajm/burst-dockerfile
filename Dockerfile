FROM debian:jessie-slim
MAINTAINER Erik Rogers <erik.rogers@live.com>

https://github.com/cuthulino/BurstMiner/releases/download/RC-v0.1/RC-v0.1-bin-lin64.zip

ENV BURST_MINER_VERSION 0.1
ENV BURST_MINER_PACKAGE RC-v$BURST_MINER_VERSION-bin-lin64
ENV BURST_MINER_ZIP ${BURST_MINER_PACKAGE}.zip

# Choose binary release for BurstMiner
ENV BURST_MINER_RELEASE https://github.com/cuthulino/BurstMiner/releases/download/RC-v$BURST_MINER_VERSION/$BURST_MINER_ZIP
ENV BURST_MINER_DIR /mnt/burst

RUN apt-get update && apt-get install -y \
  wget \
  unzip \

# Download and install BurstMiner
RUN wget $BURST_MINER_RELEASE \
  && unzip $BURST_MINER_ZIP -d $BURST_MINER_DIR \
  && rm $BURST_MINER_ZIP

WORKDIR $BURST_MINER_DIR
CMD ./burst
