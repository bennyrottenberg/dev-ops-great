pipeline {
  agent {
    node {
      label 'python_agent'
    }
  }
  stages {
    stage('run python script') {
      steps {
        script{
          sh "python main.py"
        }
      }
    }
  }
}
    
          
