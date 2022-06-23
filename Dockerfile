FROM golang:alpine3.15 AS go-builder
WORKDIR /go
COPY main.go main.go
RUN go build -v -o app main.go

FROM golang:alpine3.15
WORKDIR /go
COPY --from=go-builder /go/app ./app
CMD ./app
EXPOSE 80