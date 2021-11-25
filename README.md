# leanote-docker

`leanote`容器镜像生成

## Build （非必须）
1. curl -sL -o http://sourceforge.net/projects/leanote-bin/files/2.6.1/leanote-linux-amd64-v2.6.1.bin.tar.gz/download
2. docker build -t zxfishhack/leanote:2.6.1 .

## Use
运行环境要求：docker、docker-compose

运行步骤：
1. 修改`app.conf`中的`site.url`，将其修改为leanote使用的域名:端口，默认监听启动机器的9001端口，如需变更，则修改`docker-compose.yaml`中的`services.leanote.ports`中的9001
1. 将leanote仓库的`mongodb_backup/leanote_install_data`目录拷贝到当前目录
1. docker-compose up -d
