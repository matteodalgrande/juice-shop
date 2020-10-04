pipeline {

    agent any
    tools {nodejs "nodejs"}
    stages {

        stage ('Initialization') {
            steps {
                sh 'echo "Starting the build"'
            }
        }

        stage ('Build') {
            steps {
                sh 'npm install'
            }
        }

    }

}