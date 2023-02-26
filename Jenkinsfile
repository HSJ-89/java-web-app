pipeline {
    environment {
        registry = "hsj89/webapp"
        registryCredential = 'Dockerhub'
        dockerImage = ''
    } 
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
                script {
                    dockerImage = docker.build registry + "v:$BUILD_NUMBER"
                }
                
            }
        }
        
    }
}