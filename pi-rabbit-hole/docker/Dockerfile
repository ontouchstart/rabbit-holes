FROM node:25

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    pkg-config \
    libcairo2-dev \
    libpixman-1-dev \
    && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable

ENV PATH="/root/.cargo/bin:${PATH}"

RUN cargo install uv

WORKDIR /app

RUN git clone https://github.com/badlogic/pi-mono.git

WORKDIR /app/pi-mono
RUN npm install && npm run build

RUN node packages/coding-agent/dist/cli.js --help

CMD ["node", "packages/coding-agent/dist/cli.js"]
