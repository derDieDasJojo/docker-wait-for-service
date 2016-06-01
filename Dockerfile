FROM busybox:latest

ADD run.sh /opt/parse-conf/run.sh
RUN cp /bin/nc /opt/parse-conf/nc
VOLUME /opt/parse-conf
CMD /opt/parse-conf/run.sh
