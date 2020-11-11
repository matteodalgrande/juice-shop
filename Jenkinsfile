pipeline {

    agent any
    tools {nodejs "nodejs"}

    stages {

        // //ok
        stage ('Build') {
            steps {
                sh 'echo "ciao"'
            }
        }

        stage('LINTING and STANDARD'){
            parallel{
                //ok   
                    stage('standard-code and angular-linting'){
                        steps{
                                            sh 'echo "ciao"'
                        }
                    }
                // //ok
                stage ('JShint') {
                                    sh 'echo "ciao"'
                    steps {
                    }
                }
                // okP
                stage ('ESlint') {
                    steps {
                                        sh 'echo "ciao"'
                    }
                }
            }
        }

        // ok
        stage('SAST'){
            parallel {
                //ok
                stage ('SAST - SonarQube Analysis') {
                    steps {
                                        sh 'echo "ciao"'
                    }
                }
                //ok
                stage ('SAST - NPM Audit Analysis') {
                    steps {
                                        sh 'echo "ciao"'
                    }
                }
                // //ok    AGGIUNGEREI LA PARTE GUI, ma con un docker esterno alla pipeline
                stage ('SAST - NodeJsScan Analysis') {
                    steps {
                                        sh 'echo "ciao"'
                    }
                }

                // //ok    prettyPrint json
                stage ('SAST - Retire.js Analysis') {
                    steps {
                                        sh 'echo "ciao"'
                    }
                }

                
                // //ok
                stage ('SAST - Dependency-Check Analysis') {
                    steps{
                                        sh 'echo "ciao"'
                    }
                }

                // //ok
                stage ('SAST - Audit.js Analysis') {

                    steps {
                                        sh 'echo "ciao"'
                        
                    }
                    }
                }

                // //ok
                stage ('SAST - Snyk Analysis') {

                    steps {
                                        sh 'echo "ciao"'
                        
                    }
                }  
            }
         

        stage('Test'){
            parallel {
                stage('prova'){
                    stages{
                        stage('Coverage Test - pre Code Climate'){
                            steps{
                                                sh 'echo "ciao"'
                 }
                        }
                        //ok
                        stage('Unit Test'){
                            steps{
                                                sh 'echo "ciao"'
                            }
                        }
                         //ok
                        stage('Integration Test'){
                            steps {
                                                sh 'echo "ciao"'
   
                            }
                        }
                        stage('Coverage Test - Code Climate'){

                            steps{
                                                sh 'echo "ciao"'

                            }
                        }
                        stage ('e2e test') {
                             steps {
                                                 sh 'echo "ciao"'
  
                            }
                        }






                    }
                }

            }
        }

        stage('DAST'){
            parallel{

                stage('ZAP full scan'){
                    steps{
                                        sh 'echo "ciao"'
                    }
                }

                //ok
                stage ('W3AF') {
                    
                    steps {
                                        sh 'echo "ciao"'

                    }
                }
                //ok
                stage ('Copy Report to Jenkins Home') {
                    environment {
                        HOME_DIRECTORY = '/home/matteo'
                    }
                    steps {
                                        sh 'echo "ciao"'

                    }
                }
            }
        }
         stage ('Generating Software Bill of Materials') {
            steps {

            }
        }

        stage('Deploy'){
            parallel{

                stage ('Deploy to VM App Server - Staging') {
                    when{
                        branch 'staging'
                    }

                    steps {
                                        sh 'echo "ciao"'
                    }
                }
                stage ('Deploy to Heroku App Server - Production') {
                    when{
                        branch 'master'
                    }
                    steps {
                                        sh 'echo "ciao"'
                       }
                }
            }
        }
         //ok


        stage('Delivery'){
            parallel{
                stage('Package - Grunt'){
                    when{
                        branch 'master'
                    }
                    steps{
                                        sh 'echo "ciao"'
                     }
                }
      
                stage('Package - Docker'){
                    when{
                        branch 'master'
                    }
                            steps{
                                                sh 'echo "ciao"'
                     }
                } 
            }
        }

        stage('Send Report to Slack'){
        
                    steps{
                                        sh 'echo "ciao"'
                    }
        

            }
        

    
    }
}
 