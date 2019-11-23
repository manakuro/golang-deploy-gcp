FROM golang:1.13.3-alpine

ENV GO111MODULE=on

WORKDIR /go/src/golang-deploy-gcp
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["golang-deploy-gcp"]
