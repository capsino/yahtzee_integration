#!/bin/bash

client_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' yahtzee_client)
server_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' yahtzee_server)

curl --include --header "Accept: application/json" http://${client_ip}:80
echo
curl --include --header "Accept: application/json" http://${server_ip}:4567
echo
