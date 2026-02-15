FROM alpine:3.19

RUN apk add --no-cache \
    ca-certificates \
    curl \
    wget \
    jq \
    bash \
    docker-cli \
    tzdata \
    && mkdir -p /data

ENV TZ=Europe/Paris

LABEL org.opencontainers.image.source="https://github.com/essensys-hub/essensys-base"
LABEL org.opencontainers.image.description="Essensys shared base image for Raspberry Pi"
