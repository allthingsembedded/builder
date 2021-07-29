FROM ubuntu:20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV TZ="Europe/Zurich"

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends \
    build-essential="12.8*" \
    llvm-12="1:12.0*" \
    clang-12="1:12.0*" \
    lld-12="1:12.0*" \
    llvm-12-dev="1:12.0*" \
    libclang-12-dev="1:12.0*" \
    cmake="3.16*" \
    ninja-build="1.10.0*" \
    gcc-multilib="4:9.3.0*" \
    g++-multilib="4:9.3.0*" \
    libstdc++-10-dev="10.3.0*" \
    git="1:2.25.1*" \
    ca-certificates="*" \
    curl="7.68.0*" \
    tar="1.30*" \
    python-is-python3="3.8.2*" \
    python3="3.8.2*" && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 \
    | tar -xj -C /opt

COPY iwyu.sh /
RUN /iwyu.sh

ENV PATH="${PATH}:/opt/gcc-arm-none-eabi-10-2020-q4-major/bin"
ENV PATH="${PATH}:/opt/include-what-you-use/build/bin"
ENV PATH="${PATH}:/opt/include-what-you-use"
