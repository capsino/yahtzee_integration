#!/bin/bash

client_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' yahtzee_client)

curl --include --header "Accept: application/json" http://${client_ip}:80
echo
