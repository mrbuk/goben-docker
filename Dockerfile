FROM golang:1.17.5-alpine AS build

RUN apk update && apk add git

WORKDIR /go/src/
RUN git clone https://github.com/udhos/goben

WORKDIR /go/src/goben
RUN git checkout v0.5 && \
    CGO_ENABLED=0 go install -ldflags '-extldflags "-static"' -v ./...

FROM scratch

# the tls certificates:
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# the actual binary
COPY --from=build /go/bin/goben /go/bin/goben

ENTRYPOINT ["/go/bin/goben"]
