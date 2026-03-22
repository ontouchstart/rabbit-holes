FROM node:25

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
    pkg-config

RUN rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/microsoft/playwright.git

WORKDIR /playwright

RUN npm ci
RUN npm run build
RUN npx playwright install
RUN /playwright/node_modules/.bin/playwright --version

WORKDIR /home
