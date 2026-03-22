FROM ghcr.io/home-assistant/aarch64-base:latest

# Dependencies
RUN apk add --no-cache nodejs npm git go jq bash

# Build App
WORKDIR /app

RUN git clone https://github.com/silverbulletmd/silverbullet . \
    && npm install \
    && npm run build \
    && go build -o silverbullet-server silverbullet.go

# Copy s6 services
COPY rootfs/ /
