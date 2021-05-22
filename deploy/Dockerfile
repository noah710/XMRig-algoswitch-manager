FROM ubuntu:latest

ENV DEBIAN_FRONTEND="noninteractive"

# install deps
RUN apt update && apt upgrade -y
RUN apt install -y git build-essential cmake automake libtool autoconf wget

# now configure xmrig deps and build
COPY xmrig-algoswitching /xmrig
WORKDIR /xmrig

RUN mkdir build && \
		cd scripts && \
		./build_deps.sh && \
		cd ../build && \
		cmake .. -DXMRIG_DEPS=scripts/deps -DCMAKE_BUILD_TYPE="Release" && \
		make -j$(nproc)

COPY configs /configs
COPY deploy/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]