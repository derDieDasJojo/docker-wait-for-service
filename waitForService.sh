#!/bin/bash

#WAIT_HOST=mongo-cluster #defined by docker-compose-file
#WAIT_PORT=27017	 #defined by docker-compose-file
#WAIT_TIME=5		 #defined by docker-compose-file

#wait for service to come up
echo "waiting for $WAIT_HOST:$WAIT_PORT to come up .. "
while ! echo exit | /opt/wait/nc $WAIT_HOST $WAIT_PORT; do sleep 10; done
echo "Service $WAIT_HOST:$WAIT_PORT reached !"


#wait for some seconds 
echo "waiting $WAIT_TIME Seconds .. "
sleep $WAIT_TIME

#start node
echo "starting server"
exec "$@"
