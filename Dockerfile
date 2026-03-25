FROM ubuntu:resolute-20260312

# Install build dependencies
RUN apt-get update 
RUN apt-get install -y \
    build-essential \
    cmake \
    git \
    nodejs \
    npm \
    python3 \
    pkg-config \
    libcairo2-dev \
    libpixman-1-dev \
    llvm \
    vim 
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /home
CMD make
