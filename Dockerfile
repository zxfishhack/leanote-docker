from alpine
COPY leanote /leanote
ENTRYPOINT ["/leanote/run.sh"]
