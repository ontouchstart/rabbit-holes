FROM ubuntu:resolute-20260312

# Install build dependencies
RUN apt-get update 
RUN apt-get install -y \
    build-essential \
    ccache \
    cmake \
    curl \
    gdb \
    git \
    jq \
    nodejs \
    npm \
    python3 \
    python3.14-venv \
    pkg-config \
    libcairo2-dev \
    libpixman-1-dev \
    llvm \
    vim 
RUN rm -rf /var/lib/apt/lists/*
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable

ENV PATH="/root/.cargo/bin:${PATH}"

RUN cargo install uv

WORKDIR /home
CMD bash
