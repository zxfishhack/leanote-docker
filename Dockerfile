FROM debian 
ADD leanote.tar.gz /
RUN ls -alh /leanote
RUN chmod +x /leanote/bin/run.sh
VOLUME /leanote/files
VOLUME /leanote/public/upload
ENTRYPOINT ["/leanote/bin/run.sh"]
