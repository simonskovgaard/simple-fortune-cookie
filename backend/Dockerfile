FROM golang:1.16-alpine

WORKDIR /backend

COPY go.mod ./
COPY go.sum ./

COPY *.go ./

RUN go build .

ENTRYPOINT ["go", "run", "."] 