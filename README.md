For the purposes of a spike, some examples on limiting access using AuthorizationPolicies.

I used labels on the "target" side, and service accounts on the "from" side. That should be sufficient for our needs.

Tested with Istio 1.4.

Quick summary:

- Policies are applied at the workload level, not the service level. So your authorization policies should be written to 
target _pod_ labels
- If a workload has no authorization policies that match it, all traffic is allowed by default
- If a workload has any authorization policies matching it as a target, then traffic is allowed if it matches any of 
the rules
  -  e.g. if any one of the rules on the policy matches, then traffic is allowed.
