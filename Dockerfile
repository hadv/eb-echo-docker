FROM golang:1.7
MAINTAINER Tony Dang

# Set GOPATH/GOROOT environment variables
RUN mkdir -p /go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

# go get all of the dependencies
RUN go get github.com/tools/godep

# Set up app
ADD . /go/src/github.com/hadv/eb-echo-docker
WORKDIR /go/src/github.com/hadv/eb-echo-docker
RUN godep go build -v

EXPOSE 3000

CMD ["go", "run", "/app/server.go"]