to run this:

0. Point your kubectl at a kubernetes cluster with Istio running
1. kubectl apply -f redis.yaml
2. ./can-i-connect.sh (should return `(empty list or set)`)
3. ./can-i-connect-not-allowed.sh (should return `Error: Server closed the connection`)
