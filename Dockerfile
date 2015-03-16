FROM golang:latest
ADD . /go/src/oenny
RUN go install oenny
ENTRYPOINT /go/bin/oenny
EXPOSE 80
