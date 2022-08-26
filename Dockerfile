FROM golang:1.19-alpine AS builder
WORKDIR /go/src/github.com/bt/soxy/
COPY . .
RUN go build 

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/

COPY --from=0 /go/src/github.com/bt/soxy/soxy /usr/bin/
COPY docker-entrypoint.sh /

CMD ["/docker-entrypoint.sh"]