FROM golang:1-alpine AS build
ARG HTTPS_PROXY
ENV https_proxy=$HTTPS_PROXY
RUN env
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add git
RUN go get github.com/revel/cmd/revel
RUN go get github.com/golang/dep/cmd/dep
RUN go get -u github.com/leanote/leanote/app
RUN revel build -t /leanote -a $GOPATH/src/github.com/leanote/leanote
RUN cp -rf $GOPATH/src/github.com/leanote/leanote/messages /leanote/src/github.com/leanote/leanote
COPY run.sh leanote
FROM alpine
COPY --from=build /leanote /leanote
VOLUME /leanote/src/github.com/leanote/leanote/files
VOLUME /leanote/src/github.com/leanote/leanote/public/upload
ENTRYPOINT ["/leanote/run.sh"]
