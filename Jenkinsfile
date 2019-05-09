pipeline {
    agent any
    stages {
      stage('Namespace resources') {
        steps{
          sh '''
            kubectl create namespace ${Namespace}
            kubectl apply -f /root/kubernetes-jenkins/ns-resource-quota_${Pods}.yaml --namespace=${Namespace}
            '''
        }
      }

    }    
}
