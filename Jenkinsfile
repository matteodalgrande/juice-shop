pipeline {

    agent any
    tools {nodejs "nodejs"}

    stages {

        // //ok
        stage ('Build') {
            steps {

            }
        }

        stage('LINTING and STANDARD'){
            parallel{
                //ok   
                    stage('standard-code and angular-linting'){
                        steps{
                        }
                    }
                // //ok
                stage ('JShint') {
                    steps {
                    }
                }
                // okP
                stage ('ESlint') {
                    steps {
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
                    }
                }
                //ok
                stage ('SAST - NPM Audit Analysis') {
                    steps {
                    }
                }
                // //ok    AGGIUNGEREI LA PARTE GUI, ma con un docker esterno alla pipeline
                stage ('SAST - NodeJsScan Analysis') {
                    steps {
                    }
                }

                // //ok    prettyPrint json
                stage ('SAST - Retire.js Analysis') {
                    steps {
                    }
                }

                
                // //ok
                stage ('SAST - Dependency-Check Analysis') {
                    steps{
                    }
                }

                // //ok
                stage ('SAST - Audit.js Analysis') {

                    steps {
                        
                    }
                    }
                }

                // //ok
                stage ('SAST - Snyk Analysis') {

                    steps {
                        
                    }
                }  
            }
         

        stage('Test'){
            parallel {
                stage('prova'){
                    stages{
                        stage('Coverage Test - pre Code Climate'){
                            steps{
                 }
                        }
                        //ok
                        stage('Unit Test'){
                            steps{
                            }
                        }
                         //ok
                        stage('Integration Test'){
                            steps {
   
                            }
                        }
                        stage('Coverage Test - Code Climate'){

                            steps{

                            }
                        }
                        stage ('e2e test') {
                             steps {
  
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
                    }
                }

                //ok
                stage ('W3AF') {
                    
                    steps {

                    }
                }
                //ok
                stage ('Copy Report to Jenkins Home') {
                    environment {
                        HOME_DIRECTORY = '/home/matteo'
                    }
                    steps {

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
                    }
                }
                stage ('Deploy to Heroku App Server - Production') {
                    when{
                        branch 'master'
                    }
                    steps {
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
                     }
                }
      
                stage('Package - Docker'){
                    when{
                        branch 'master'
                    }
                            steps{
                     }
                } 
            }
        }

        stage('Send Report to Slack'){
        
                    steps{
                    }
        

            }
        

    
    }
}
 