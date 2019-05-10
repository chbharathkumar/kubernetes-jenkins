pipeline {
    agent any
    stages {
      stage('Tenant Creation') {
        steps{
          sh '''
          kubectl create namespace ${Tenant_Name}
            #!/bin/sh

a=Number_of_Micro_services
b=Replicas
c=2
d=$((a  b  c))
echo no of microservices are $d
if [ $d -ge 1 ] && [ $d -le 30 ] ;
then
kubectl apply -f ns-resource-quota/ns-resource-quota_0-5.yaml --namespace=${Tenant_Name}
elif [ $d -ge 31 ] && [ $d -le 60 ] ;
then
kubectl apply -f ns-resource-quota/ns-resource-quota_5-10.yaml --namespace=${Tenant_Name}
elif [ $d -ge 61 ] && [ $d -le 100 ] ;
then
kubectl apply -f ns-resource-quota/ ns-resource-quota_10-15.yaml --namespace=${Tenant_Name}
else
echo the selected values are not in range
fi

            kubectl describe ns ${Tenant_Name}
            '''
        }
      }

    }    
}
