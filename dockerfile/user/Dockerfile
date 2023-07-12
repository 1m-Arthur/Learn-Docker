FROM golang:alpine

RUN mkdir /app
RUN addgroup -S arthurgroups
RUN adduser -S -D -h /app arthur arthurgroups
RUN chown -R arthur:arthurgroups /app
USER arthur

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go