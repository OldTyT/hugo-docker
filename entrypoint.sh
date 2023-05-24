#!/bin/sh
hugo server --port 80 --bind 0.0.0.0 -e production --baseURL=$BASEURL
