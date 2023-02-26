pipeline {
    
    agent any 
    tools
	{
	    maven 'maven'
	}		

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
               
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                    
                }
            }
        }
        stage('Build Image') {
            steps {
                sh 'build -t javawebapp-$BUILD_NUMBER'
            }
        }
        
    }
}