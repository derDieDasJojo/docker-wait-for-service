FROM busybox:latest

ADD waitForService.sh /opt/wait/waitForService.sh
ADD waitTime.sh /opt/wait/waitTime.sh
RUN cp /bin/nc /opt/wait/nc
VOLUME /opt/wait
CMD /opt/wait/waitForService.sh
