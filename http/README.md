to run this
-----------

0. Point your kubectl at a kubernetes cluster with Istio running
1. `kubectl apply -f httpbin.yaml`
2. `./can-i-connect.sh` (should return 204)
3. `./can-i-connect-from-another-allowed.sh` (should return 204)
4. `./can-i-connect-not-allowed.sh` (should return `403`)

HTTP targeting example
----------------------

1. pod (target-http) labels:
    1. `app=httpbin`
    1. `version=v1`
2. service target labels:
    1. `app=httpbin`
3. authorizationpolicy target labels:
    1. `app=httpbin`
    1. `version=v1`
    
By this, you can see that the authorization policy is applied at the workload-level, not the service-level.