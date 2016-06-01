FROM busybox:latest

ADD run.sh /run/run.sh
CMD /run/run.sh
