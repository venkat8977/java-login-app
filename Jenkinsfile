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
        	sh 'mvn clean package' 
      		}
    	}
	
	stage('Build image') {
		 agent any 
		 steps {
        
        	   sh "docker build . -t test-image" 
		 }
    		}
       
    }
}
