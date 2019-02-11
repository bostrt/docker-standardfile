FROM golang:1.8

RUN go get github.com/tectiv3/standardfile
RUN go install github.com/tectiv3/standardfile

VOLUME ["/go/data/"]
EXPOSE 8888

CMD ["standardfile", "-foreground", "-db", "/go/data/sf.db"]
