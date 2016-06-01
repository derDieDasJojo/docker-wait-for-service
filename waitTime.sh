#!/bin/bash

#WAIT_TIME=5		 #defined by docker-compose-file

#wait for some seconds 
echo "waiting $WAIT_TIME Seconds .. "

#start server
echo "starting server"
exec "$@"
