pipeline {
  agent {
    node {
      label 'jenkins_agent'
    }
  }
  triggers {
    pollSCM '* * * * *'
  }
  stages {
    stage('run puthon script') {
      steps {
        script{
          sh "python main.py"
        }
      }
    }
  }
}
    
          