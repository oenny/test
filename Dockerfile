FROM golang:latest
ADD . /go/src/oenny
RUN go install oenny
ENTRYPOINT /go/bin/golang-docker
EXPOSE 80
