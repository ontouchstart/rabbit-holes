FROM node:24

RUN apt-get update 
RUN npm install -g playwright
RUN npx playwright install-deps
RUN rm -rf /var/lib/apt/lists/*
RUN npx playwright install

RUN git clone https://github.com/ontouchstart/pi-mono.git
RUN cd pi-mono && npm install && npm run build 
RUN ln -s /pi-mono/packages/coding-agent/dist/cli.js /usr/local/bin/pi

WORKDIR /home
CMD bash
