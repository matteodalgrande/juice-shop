pipeline {

    agent any
    tools {nodejs "nodejs"}

    stages {

        // //ok
        stage('LINTING - STANDARD - GIT SECRET'){
            parallel{
                //ok   
                    stage('standard-code and angular-linting'){
                        steps{
                                            sh 'echo "ciao"'
                        }
                    }
                // //ok
                stage ('JShint') {
                                   
                    steps {
                                        sh 'echo "ciao"'
                    }
                }
                // okP
                stage ('ESlint') {
                    steps {
                                        sh 'echo "ciao"'
                    }
                }
                stage('git-secrets'){
                    steps{
                    sh 'echo "ciao"'
                    }
                }
            }
        }

        stage ('Build') {
            steps {
                // sh 'rm -r node_modules  package-lock.json || true  && rm -r frontend/node_modules frontend/package-lock.json || true'   
                // sh 'npm install --package-lock'
                sh 'echo "ciao"'
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

                // //ok
                stage ('SAST - Snyk Analysis') {

                    steps {
                                        sh 'echo "ciao"'
                        
                    }
                }  
            }
    }


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
                sh 'echo "ciao"'
            }
        }

        stage('Deploy and Delivery'){
            parallel{
                stage('Package - Grunt'){

                    steps{
                                        sh 'echo "ciao"'
                     }
                }
      
                stage('Package - Docker'){

                            steps{
                                                sh 'echo "ciao"'
                     }
                } 
                stage ('Deploy to VM App Server - Staging') {
                    when{
                        branch 'staging'
                    }

                    steps {
                                        sh 'echo "ciao"'
                    }
                }
                stage ('Deploy to Heroku App Server - Production') {

                    steps {
                                        sh 'echo "ciao"'
                       }
                }
            }
        }


    
    }
}
 