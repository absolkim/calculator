#!/bin/bash
test $(curl localhost:8765/sum?a=1\&b=2) -eq 3 || test $(curl $(docker network inspect -f '{{range .IPAM.Config}}{{.Gateway}}{{end}}'bridge):8765/sum?a=1\&b=2)
