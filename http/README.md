to run this:

0. Point your kubectl at a kubernetes cluster with Istio running
1. kubectl apply -f httpbin.yaml
2. ./can-i-connect.sh (should return 204)
3. ./can-i-connect-not-allowed.sh (should return `403`)
