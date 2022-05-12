FROM golang:1.18

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY ./ ./

WORKDIR /app/server

RUN go build -o /server

EXPOSE 1337-1341

CMD [ "timeout", "30m", "/server" ]
