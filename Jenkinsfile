pipeline {
  agent {
    node {
      label 'python_agent'
    }
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
    
          