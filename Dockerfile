ARG release=focal
ARG distro=ubuntu
FROM $distro:$release
MAINTAINER Number Six <59003907+Number5ix@users.noreply.github.com>

RUN apt-get update \
  && env DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common \
  ca-certificates \
  build-essential \
  clang \
  cmake \
  git \
  libc++-dev \
  libc++abi-dev

ENV CMAKE_CXX_COMPILER=clang++
ENV CMAKE_C_COMPILER=clang
ENV CMAKE_LINKER=lld
ENTRYPOINT ["/bin/bash", "-l", "-c"]
