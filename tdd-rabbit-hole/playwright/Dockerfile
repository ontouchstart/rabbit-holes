FROM mcr.microsoft.com/playwright:v1.58.2-noble

RUN apt-get update
RUN apt-get install -y build-essential

RUN git clone https://github.com/microsoft/playwright.git

WORKDIR /playwright

RUN npm ci
RUN npm run build
RUN npx playwright install
RUN /playwright/node_modules/.bin/playwright --version

WORKDIR /home
