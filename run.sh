#!/bin/bash

WAIT_HOST=mongo-cluster
WAIT_PORT=27017

#wait for service to come up
echo "waiting for $WAIT_HOST:$WAIT_PORT to come up .. "
while ! echo exit | /opt/parse-conf/nc $WAIT_HOST $WAIT_PORT; do sleep 10; done
echo "Service $WAIT_HOST:$WAIT_PORT reached !"

#start node
echo "starting server"
exec "$@"
