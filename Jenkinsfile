pipeline {
    agent any
    stages {
      stage('Tenant Creation') {
        steps{
          sh '''
            kubectl create namespace ${Tenant_Name}
            kubectl apply -f ns-resource-quota/ns-resource-quota_${Number_of_Micro_services}.yaml --namespace=${Tenant_Name}
            kubectl describe ns ${Tenant_Name}
            '''
        }
      }

    }    
}
