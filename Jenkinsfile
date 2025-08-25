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
                    //sh 'docker push  hsj89/webapp:${BUILD_NUMBER}'
                	// docker.withRegistry( '', registryCredential ) {
                    // dockerImage.push()
                }
                }
            }
        
        stage('Deploy Image') {
            steps {
                script {
                    // Stop any old container with the same name
                    sh """
                    if [ \$(docker ps -q -f name=webapp) ]; then
                        docker rm -f webapp
                    fi
                    docker run -d --name webapp -p 81:8080 hsj89/webapp:${BUILD_NUMBER}
                    """
                }
            }
        }
        
    }
}
