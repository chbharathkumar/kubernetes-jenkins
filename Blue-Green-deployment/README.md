https://kumorilabs.com/blog/k8s-4-deployments-rolling-updates-canary-blue-green-kubernetes/

OR

https://github.com/ContainerSolutions/k8s-deployment-strategies/tree/master/blue-green/single-service



Service change:

kubectl set selector svc/hugo-app-blue-green-svc color=green
