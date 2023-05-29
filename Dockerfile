FROM golang:alpine
ARG GOOS=linux
ARG GOARCH=arm64
WORKDIR /usr/src/app

COPY go.mod ./
COPY *.go .

RUN go build -o /hello-world