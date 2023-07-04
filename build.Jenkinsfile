pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'your_docker_image_name'
    }

    stages {
        stage('Build') {
            steps {
                // Clean up any previous build artifacts
                sh 'rm -rf dist'

                // Copy HTML and CSS files to the 'dist' directory
                sh 'mkdir -p dist/css'
                sh 'cp index.html dist/'
                sh 'cp style.css dist/css/'

                // Optionally, copy other static assets (images, JS files, etc.) if your project requires them
                // sh 'cp -r images dist/'
                // sh 'cp -r js dist/'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                sh "docker build -t $DOCKER_IMAGE_NAME ."
            }
        }

        stage('Clean Up') {
            steps {
                // Clean up any temporary artifacts or containers
                sh 'rm -rf dist'
            }
        }
    }
}
