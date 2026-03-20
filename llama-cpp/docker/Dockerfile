FROM node:25

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    pkg-config \
    libcairo2-dev \
    libpixman-1-dev \
    cmake \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.cargo/bin:${PATH}"

WORKDIR /app

RUN git clone https://github.com/badlogic/pi-mono.git
RUN git clone https://github.com/ggml-org/llama.cpp.git
RUN git clone https://github.com/gary149/llama-agent.git

RUN cd pi-mono && npm install && npm run build

WORKDIR /app

CMD ["node", "/app/pi-mono/packages/coding-agent/dist/cli.js"]
