pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '"mvn" -Dmaven.test.failure.ignore clean install'
      }
    }
    stage('Deploy') {
      steps {   
         deploy adapters: [tomcat8(credentialsId: 'deploy', path: '', url: 'http://3.110.134.168:8080')], contextPath: null, war: '**/**.war'
      }
    }
  }
}
