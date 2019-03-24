from alpine
COPY leanote /leanote
VOLUME /leanote/src/github.com/leanote/leanote/files
VOLUME /leanote/src/github.com/leanote/leanote/public/upload
ENTRYPOINT ["/leanote/run.sh"]
