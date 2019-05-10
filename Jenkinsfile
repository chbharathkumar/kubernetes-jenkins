pipeline {
    agent any
    stages {
      stage('Tenant Creation') {
        steps{
          sh '''
            kubectl create namespace ${Tenant}
            kubectl apply -f ${pwd}/ns-resource-quota/ns-resource-quota_${Micro_services}.yaml --namespace=${Tenant}
            kubectl describe ns ${Tenant}
            '''
        }
      }

    }    
}
