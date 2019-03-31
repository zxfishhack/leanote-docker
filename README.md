# leanote-docker

`leanote`容器镜像生成

## Build
运行`./build.sh`可生成`leanote`容器镜像，使用[github.com/leanote/leanote](https://github.com/leanote/leanote)的最新版本进行构建。

# Options

1. 若`build.sh`脚本所在目录含有`app.conf`，则会使用`app.conf`覆盖默认。
1. 若`build.sh`脚本所在目录含有`run.sh`，则会使用`run.sh`覆盖默认。

## Use

容器中的`/leanote/src/github.com/leanote/leanote/files`、`/leanote/src/github.com/leanote/leanote/public/upload`路径为上传的文件所存放的路径，使用时需映射，否则存在文件丢失的可能。

`docker run -v <主机目录>:/leanote/src/github.com/leanote/leanote/files -v <主机目录>:/leanote/src/github.com/leanote/leanote/public/upload -p 9000:9000 leanote`
