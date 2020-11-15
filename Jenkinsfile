pipeline {

    agent any
    tools {nodejs "nodejs"}

    stages {
                        stage ('SAST - SonarQube Analysis') {
                    environment {
                        scannerHome = tool 'SonarQubeScanner'
                    }
                    steps {
                        withSonarQubeEnv ('SonarQube') {
                            sh '${scannerHome}/bin/sonar-scanner'
                            sh 'cat .scannerwork/report-task.txt > ${JENKINS_HOME}/reports/sonarqube-report'
                        }
                    }
                }
    }
}