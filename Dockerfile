FROM busybox:latest

ADD waitForService.sh /opt/wait/waitForService.sh
RUN cp /bin/nc /opt/wait/nc
VOLUME /opt/wait
CMD /opt/wait/waitForService.sh
