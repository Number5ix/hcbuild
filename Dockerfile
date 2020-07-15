FROM alpine:3.12
MAINTAINER Number Six <59003907+Number5ix@users.noreply.github.com>

RUN apk add --no-cache --virtual .build-deps \
    bash \
    clang \
    cmake \
    lld \
    llvm10 \
    make \
    openssl \
    git

ENV CMAKE_CXX_COMPILER=clang++
ENV CMAKE_C_COMPILER=clang
ENV CMAKE_AR=/usr/bin/llvm-ar
ENV CMAKE_LINKER=/usr/bin/ld.lld
ENV CMAKE_NM=/usr/bin/llvm-nm
ENV CMAKE_OBJDUMP=/usr/bin/llvm-objdump
ENV CMAKE_RANLIB=/usr/bin/llvm-ranlib
