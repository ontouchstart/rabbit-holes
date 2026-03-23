# Use official Node image
FROM node:20-bullseye-slim
WORKDIR /app

# Install Playwright browsers and dependencies
RUN apt-get update && apt-get install -y \
      curl \
      libxss1 libasound2 libatk1.0-0 libatk-bridge2.0-0 \
      libgtk-3-0 libnspr4 libnss3 libxcomposite1 libxdamage1 \
      libxrandr2 libgbm1 libpango-1.0-0 libpangocairo-1.0-0 \
      libdrm2 libwayland-client0 libwayland-cursor0 libwayland-egl1 \
      libwayland-server0 && rm -rf /var/lib/apt/lists/*

# Copy package files and install deps
COPY package*.json ./
RUN npm install

# Copy source
COPY src ./src

# Install Playwright browsers (uses cached binaries)
RUN npx playwright install --with-deps

# Run server and tests
ENTRYPOINT ["sh", "-c", "node src/server.js & SERVER_PID=$!; echo 'Waiting for server'; until curl -s http://localhost:3000/health; do sleep 1; done; echo 'Server ready'; npx playwright test --reporter=dot; TEST_EXIT=$?; kill $SERVER_PID; exit $TEST_EXIT"]
