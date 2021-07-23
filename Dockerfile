FROM ubuntu:20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential=12.8* \
    llvm=1:10.0* \
    clang=1:10.0* \
    lld=1:10.0* \
    gcc-multilib=4:9.3.0* \
    g++-multilib=4:9.3.0* \
    lld=1:10.0* \
    git=1:2.25.1* \
    ca-certificates=* \
    curl=7.68.0* \
    tar=1.30* \
    python3=3.8.2* && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 \
    | tar -xj -C /opt

ENV PATH="${PATH}:/opt/gcc-arm-none-eabi-10-2020-q4-major/bin"
