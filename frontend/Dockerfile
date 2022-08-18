FROM golang:1.16-alpine

WORKDIR /frontend

COPY go.mod ./

COPY . ./

RUN go build .

EXPOSE 8080 

ENTRYPOINT ["go", "run", "."]