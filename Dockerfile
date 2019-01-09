from alpine
COPY leanote /leanote
VOLUME /leanote/src/github.com/leanote/leanote/files
ENTRYPOINT ["/leanote/run.sh"]
