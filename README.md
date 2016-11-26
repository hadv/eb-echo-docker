![](https://circleci.com/gh/hadv/eb-echo-docker.png?circle-token=eb22d9306cf6f2ae4b761e3e3f23a6877811ffc8) [![Go Report Card](https://goreportcard.com/badge/github.com/hadv/eb-echo-docker)](https://goreportcard.com/report/github.com/hadv/eb-echo-docker)

# eb-echo-docker

deploy golang echo rest api to aws elastic beanstalk using docker

you can access a sample deployment on aws beanstalk on below link

http://ebechodocker-env.ap-southeast-1.elasticbeanstalk.com

# check/deploy server on local docker

1. Build docker image

```
$ docker build -t eb-echo-docker .
```

2. Run docker image on local machine on port 8080

```
$ docker run -it --rm -p 8080:3000 eb-echo-docker
```

3. Check the server

```
$ curl http://192.168.99.100:8080
```
