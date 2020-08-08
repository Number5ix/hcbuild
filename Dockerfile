FROM alpine:3.12
MAINTAINER Number Six <59003907+Number5ix@users.noreply.github.com>

RUN echo '@edgetesting http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk add --no-cache \
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
    npm \
    rsync \
    xz && \
    ln -sf /usr/bin/ld.lld /usr/bin/ld && \
    npm i -g luamin

ENV CC=clang \
    CXX=clang++ \
    LD=ld.lld \
    CMAKE_CXX_COMPILER=clang++ \
    CMAKE_C_COMPILER=clang \
    CMAKE_AR=/usr/bin/llvm-ar \
    CMAKE_LINKER=/usr/bin/ld.lld \
    CMAKE_NM=/usr/bin/llvm-nm \
    CMAKE_OBJDUMP=/usr/bin/llvm-objdump \
    CMAKE_RANLIB=/usr/bin/llvm-ranlib
