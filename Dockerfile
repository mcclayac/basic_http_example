FROM golang:1.8

RUN mkdir /go/src/basic_http_example
RUN chdir /go/src/basic_http_example
WORKDIR /go/src/basic_http_example
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["basic_http_example"]
