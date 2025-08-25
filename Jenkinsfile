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
                    sh 'docker build -t hsj89/webapp:${BUILD_NUMBER} .'
                }
                
            }
        }

		stage('docker  Images') {
            steps {
                script {
                    sh 'docker images'
                }
                
            }
        }
		
        stage('push Image') {
            steps{
                script {
					echo "Push Image"
                    sh 'docker pish -t hsj89/webapp:${BUILD_NUMBER}'
                	// docker.withRegistry( '', registryCredential ) {
                    // dockerImage.push()
                }
                }
            }
        
        stage('deploy EKS') {
            steps {
                script {
					echo "Deploy to EKS"
                    // sh "kubectl apply -f pod.yaml"
                }
                
            }
        }
        
    }
}
