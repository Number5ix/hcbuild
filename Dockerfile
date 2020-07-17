FROM alpine:3.12
MAINTAINER Number Six <59003907+Number5ix@users.noreply.github.com>

RUN echo '@edgetesting http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk add --no-cache --virtual .build-deps \
    bash \
    clang \
    cmake \
    gcc \
    g++ \
    libgcc \
    lld \
    llvm10-dev \
    make \
    minio-client@edgetesting \
    musl-dev \
    openssl \
    git \
    nodejs \
    npm
RUN ln -sf /usr/bin/ld.lld /usr/bin/ld
RUN npm i -g luamin

ENV CC=clang
ENV CXX=clang++
ENV LD=ld.lld

ENV CMAKE_CXX_COMPILER=clang++
ENV CMAKE_C_COMPILER=clang
ENV CMAKE_AR=/usr/bin/llvm-ar
ENV CMAKE_LINKER=/usr/bin/ld.lld
ENV CMAKE_NM=/usr/bin/llvm-nm
ENV CMAKE_OBJDUMP=/usr/bin/llvm-objdump
ENV CMAKE_RANLIB=/usr/bin/llvm-ranlib
