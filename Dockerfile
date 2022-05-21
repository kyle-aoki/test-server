FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod download

RUN go build

CMD ./test-server
