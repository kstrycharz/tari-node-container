# Ubuntu base
FROM ubuntu:24.04

ARG URL="https://github.com/tari-project/tari/releases/download/v5.0.0-pre.4/tari_suite-5.0.0-pre.4-mainnet-2aee206-linux-x86_64.zip"
ARG FILE="tari_suite-5.0.0-pre.4-mainnet-2aee206-linux-x86_64.zip"
# Install basics we might need for downloads/extraction
RUN apt-get update && apt-get install -y unzip wget

WORKDIR /home/ubuntu/
RUN wget $URL
RUN unzip $FILE


ENTRYPOINT ["./minotari_node"]
CMD ["-b", "/home/ubuntu/.tari", "--grpc-enabled", "--disable-splash-screen", "-n"]