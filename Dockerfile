FROM golang:alpine3.15 AS go-builder
WORKDIR /go
COPY main.go main.go
RUN go build -v -o app main.go

FROM golang:alpine3.15
WORKDIR /go
COPY --from=go-builder /go/app ./app
COPY health_check.sh health_check.sh
CMD ./app
EXPOSE 8080

HEALTHCHECK --interval=10s --timeout=5s --retries=3 CMD ./health_check.sh
