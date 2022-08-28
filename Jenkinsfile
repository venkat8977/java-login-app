pipeline{
    agent any 
    environment {
        PATH = "$PATH:/opt/maven/bin"
    }
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/vikramDevPrac/java-login-app.git'
            }
         }
       stage('Build') {
      steps {
        sh '"mvn" -Dmaven.test.failure.ignore clean install'
      	}
    	}
	
	 stage('Build image') {
		 steps {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        	sh "docker build . -t devops-image" 
		 }
    }
        
	//stage('Deploy') {
      //steps {   
      //   deploy adapters: [tomcat8(credentialsId: 'deploy', path: '', url: 'http://3.110.134.168:8080')], contextPath: null, war: '**/**.war'
      //}
    //}
       
    }
}
