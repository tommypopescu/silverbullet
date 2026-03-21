
FROM ghcr.io/home-assistant/aarch64-base:latest
RUN apk add --no-cache nodejs npm git go bash
WORKDIR /app
RUN git clone https://github.com/silverbulletmd/silverbullet.git .
RUN npm install && npm run build
RUN go build -o silverbullet-server silverbullet.go
COPY run.sh /run.sh
RUN chmod a+x /run.sh
EXPOSE 3000
CMD ["/run.sh"]
