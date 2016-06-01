#!/bin/bash

HOST=mongo-cluster
PORT=27017

#wait for service to come up
while ! nc -q 1 $HOST $PORT </dev/null; do sleep 10; done

#start node
npm start
