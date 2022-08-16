pipeline {
  agent any
  tools {
    maven 'M2_HOME' 
  }
  stages {
    stage ('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage ('Deploy') {
      steps {
        script {
          deploy adapters: [tomcat8(path: '', url: 'http://3.111.168.155:8080/')], contextPath: '/pipeline', onFailure: false, war: 'webapp/target/*.war' 
        }
      }
    }
  }
}
