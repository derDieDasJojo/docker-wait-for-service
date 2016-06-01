FROM busybox:latest

RUN cp /bin/nc /opt/parse-conf/nc
ADD run.sh /opt/parse-conf/run.sh
VOLUME /opt/parse-conf
CMD /opt/parse-conf/run.sh
