pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'clean install package'
      }
    }
  }
}
