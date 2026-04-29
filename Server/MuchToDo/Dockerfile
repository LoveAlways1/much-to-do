# Build stage
FROM golang:1.26-bookworm AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o muchtodo ./cmd/api

# Runtime stage
FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates wget \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd -r appgroup \
    && useradd -m -u 10001 -g appgroup -s /usr/sbin/nologin appuser \
    && mkdir -p /home/appuser/.cache/goimports /tmp/go-cache /tmp/go-mod-cache /app \
    && chown -R appuser:appgroup /home/appuser /tmp/go-cache /tmp/go-mod-cache /app \
    && chmod -R 755 /home/appuser /tmp/go-cache /tmp/go-mod-cache /app

ENV HOME=/home/appuser
ENV GOCACHE=/tmp/go-cache
ENV GOMODCACHE=/tmp/go-mod-cache

COPY --from=builder /app/muchtodo /app/muchtodo

RUN chown appuser:appgroup /app/muchtodo \
    && chmod 755 /app/muchtodo

USER appuser

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD wget -qO- http://localhost:8080/health || exit 1

CMD ["/app/muchtodo"]
