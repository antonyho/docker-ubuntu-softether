#!/bin/bash

docker run --rm -d -p 443:443 -p 992:992 -p 5555:5555 -name softether-server-cntr antonyho/softether-server
