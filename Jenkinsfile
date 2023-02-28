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
                sh 'mvn package'
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
                    dockerImage = docker.build registry + ":version-$BUILD_NUMBER"
                }
                
            }
        }
        stage('Deploy Image') {
            steps{
                script {
                docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                }
                }
            }
        }
        stage('deploy EKS') {
            steps {
                script {
                    sh "kubectl apply -f java-web-app/pod.yaml"
                }
                
            }
        }
        
    }
}