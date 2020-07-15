FROM alpine:3.12
MAINTAINER Number Six <59003907+Number5ix@users.noreply.github.com>

RUN apk add --no-cache --virtual .build-deps \
    bash \
    binutils \
    clang \
    cmake \
    make \
    openssl \
    git

ENV CMAKE_CXX_COMPILER=clang++
ENV CMAKE_C_COMPILER=clang
ENV CMAKE_LINKER=lld
