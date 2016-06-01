FROM busybox:latest

ADD run.sh /opt/parse-conf/run.sh
VOLUME /opt/parse-conf
CMD /opt/parse-conf/run.sh
