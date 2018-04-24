FROM golang:1.8
MAINTAINER Tony Dang

# Set GOPATH/GOROOT environment variables
RUN mkdir -p /go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

# go get all of the dependencies
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# Set up app
WORKDIR /go/src/github.com/hadv/eb-echo-docker
ADD . .
RUN dep ensure
RUN go build -v

EXPOSE 3000

CMD ["./eb-echo-docker"]
