FROM golang:latest
ADD . /oenny
RUN go install /oenny
ENTRYPOINT /go/bin/golang-docker
EXPOSE 80
