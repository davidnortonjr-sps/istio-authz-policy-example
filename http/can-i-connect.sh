#!/bin/bash

kubectl -n source-http exec -it deploy/sourceapp -c app -- curl http://httpbin.target-http:8000/status/204 -v
