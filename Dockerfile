FROM golang:1.23
WORKDIR /usr/src/app
COPY . .
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64
RUN go build -o /my_app
CMD ["/my_app"]
