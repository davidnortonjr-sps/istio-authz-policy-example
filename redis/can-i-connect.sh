#!/bin/bash

kubectl -n source-redis exec -it deploy/redisclient -c app -- redis-cli -h redis.target-redis keys '*'
