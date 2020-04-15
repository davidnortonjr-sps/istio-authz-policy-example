#!/bin/bash

kubectl -n source-http exec -it deploy/anotherallowedsourceapp -c app -- curl http://httpbin.target-http:8000/status/204 -v
