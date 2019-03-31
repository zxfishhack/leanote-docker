# leanote-docker

`leanote`容器镜像生成

## Build （非必须）
docker build --build-arg HTTPS_PROXY=<编译使用的代理服务器> -t zxfishhack/leanote .

## Use
运行环境要求：docker、docker-compose

运行步骤：
1. 修改`app.conf`中的`site.url`，将其修改为leanote使用的域名:端口，默认监听启动机器的9001端口，如需变更，则修改`docker-compose.yaml`中的`services.leanote.ports`中的9001
1. git submodule update --init
1. docker-compose up -d