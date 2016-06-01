wait-for service
----------------
a dockerfile to wait for a webservice


Configuration
-----------

It is fully configured via Environment Variables
WAIT_HOST=www.google.de
WAIT_PORT=80
WAIT_TIME=5

Service waits until http://www.google.de:80 is reachable
Then waits another 5 seconds
Then runs the Script given as Parameters

Example:
--------
#create a container
docker create --name wait-for-service derdiedasjojo/wait-for-service

#inject wait-for-service into another container and then run its very own command, eg: echo "ok"
docker run --volumes-from wait-for-service --env WAIT_HOST=www.google.de --env WAIT_PORT=80 --env WAIT_TIME=5  nginx /opt/wait/waitForService.sh echo "ok"
