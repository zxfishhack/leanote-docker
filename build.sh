#!/bin/sh

go get github.com/revel/cmd/revel
go get -u github.com/leanote/leanote/app

revel build -t leanote -a $GOPATH/src/github.com/leanote/leanote

[ -f app.conf ] && cp -f app.conf leanote/src/github.com/leanote/leanote/conf
[ -f run.sh ] && cp -f run.sh leanote

cp -rf $GOPATH/src/github.com/leanote/leanote/messages leanote/src/github.com/leanote/leanote

docker build -t leanote .
