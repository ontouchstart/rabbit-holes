FROM node

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libasound2 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libatspi2.0-0 \
    libcairo2-dev \
    libcups2 \
    libdbus-1-3 \
    libgbm1 \
    libnspr4 \
    libnss3 \
    libpixman-1-dev \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxkbcommon0 \
    libxrandr2 \
    python3 \
    pkg-config \
    vim

RUN rm -rf /var/lib/apt/lists/*
RUN npx playwright install --with-deps

WORKDIR /home
