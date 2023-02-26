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
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t javawebapp-$BUILD_NUMBER .'
            }
        }
        
    }
}