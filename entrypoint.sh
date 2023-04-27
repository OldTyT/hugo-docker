#!/bin/sh
hugo  --destination=/hugo_out --baseURL=$BASEURL
nginx -g 'daemon off;'
