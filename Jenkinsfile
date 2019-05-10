pipeline {
    agent any
    stages {
      stage('Tenant Creation') {
        steps{
          sh '''
            kubectl create namespace ${Tenant}
            kubectl apply -f /root/kubernetes-jenkins/ns-resource-quota/ns-resource-quota_${Micro-services}.yaml --namespace=${Tenant}
            kubectl describe ns ${Tenant}
            '''
        }
      }

    }    
}
