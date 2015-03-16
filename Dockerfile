FROM golang:latest
ADD . /go/src/oenny
RUN go install oenny
#CMD ["go", "run", ""]
#ENTRYPOINT /go/bin/golang-docker
EXPOSE 80
