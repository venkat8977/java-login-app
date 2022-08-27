pipeline{
    agent any
    
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/vikramDevPrac/java-login-app.git'
            }
         }
       stage('Build'){
            steps{
                sh 'mvn clean package'
            }
         }
	stage('Test'){
		steps{
                sh 'mvn test'
                 }
            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                }
            }
         }
        
        
	//stage('Deploy') {
      //steps {   
      //   deploy adapters: [tomcat8(credentialsId: 'deploy', path: '', url: 'http://3.110.134.168:8080')], contextPath: null, war: '**/**.war'
      //}
    //}
       
    }
}
