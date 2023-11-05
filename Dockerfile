FROM oven/bun:1.0.8

WORKDIR /app

COPY package.json ./
COPY bun.lockb ./
COPY src ./src

RUN bun install

CMD ["bun", "run", "src/index.ts"]
