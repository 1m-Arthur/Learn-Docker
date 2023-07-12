FROM golang:alpine as builder

WORKDIR /app
COPY main.go .
RUN go mod init helloapp
RUN go build -o /app/main main.go

FROM alpine:latest

WORKDIR /app
COPY --from=builder /app/main /app/
CMD /app/main