FROM golang:1.11-alpine

WORKDIR /go/src/golang-deploy-gcp
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["golang-deploy-gcp"]
