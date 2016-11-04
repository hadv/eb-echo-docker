FROM golang:1.7
MAINTAINER Tony Dang

# Set GOPATH/GOROOT environment variables
RUN mkdir -p /go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

# go get all of the dependencies
RUN go get github.com/labstack/echo
RUN go get github.com/labstack/echo/engine/standard

# Set up app
ADD . /app

EXPOSE 3000

CMD ["go", "run", "/app/server.go"]