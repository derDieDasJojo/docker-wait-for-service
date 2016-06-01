#!/bin/bash

HOST=mongo-cluster
PORT=27017

#wait for service to come up
echo "waiting for db to come up .. "
while ! ./nc -q 1 $HOST $PORT </dev/null; do sleep 10; done
echo "db reached !"

#start node
echo "starting server"
npm start
