FROM busybox:latest

ADD run.sh /opt/parse-conf/run.sh
CMD /opt/parse-conf/run.sh
