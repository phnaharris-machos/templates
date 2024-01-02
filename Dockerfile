FROM node:18-slim

RUN mkdir -p /opt/work

WORKDIR /opt/work

COPY . .

RUN npm install -g pnpm && pnpm install
ENTRYPOINT ["pnpm","start"]
