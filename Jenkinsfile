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
                // includo angular
                sh 'cd frontend && node --max-old-space-size=8192 ./node_modules/@angular/cli/bin/ng build --aot --prod --output-hashing=none --vendor-chunk=true --source-map=false'
            }
        }

        stage('standard and angular-linting'){
                //Standard fix formatta automaticamente il codice in un formato standard
                //il linting in angular controlla la qualita' del codice angular nel progetto
                steps{
                sh 'standard --fix && cd frontend && ng lint && cd ..'
                sh ''
            }
        }

        stage ('Unit test') {
            steps {
                //test mocha on chromium
                sh 'cd frontend && ng test --watch=false --source-map=false --browsers=ChromiumHeadless && cd .. && nyc --report-dir=./build/reports/coverage/server-tests mocha test/server'
    
            }
        }

        stage ('Integration test') {
            // integration test--> cambi il file node_modules/jest/node_modules/jest_cli/bin/jest.js sostituendo     process.env.NODE_ENV = 'test'; con     process.env.NODE_ENV = ''; e poi elimini[commenti l'ultimo test dentro l'if] il file /test/api/fileUploadSpec.js ",
            steps {
                //frisby
                sh 'nyc --report-dir=./build/reports/coverage/api-tests jest --silent --runInBand --forceExit'
            }
        }
        stage ('e2e test') {
                // e2e test--> protractor.conf.js aggiungere nell'array exports.config la linea chromeDriver:'./chromedriver', e scricare il driver chrome 83 e inserirlo nella main directory;    -->        commentare le linee dalla 88 alla 104 in test/e2e/complianSpec.js sennò il server non risponde più",
            steps {
                //preprotractor
                sh 'npm dedupe && node ./node_modules/protractor/bin/webdriver-manager update --gecko false'
                //protractor
                sh 'npm run e2e'
                //e2e test
                sh 'node test/e2eTests.js'
                //vagrant 
                sh 'cd vagrant && vagrant up'
            }
        }
        stage ('Start App') {
            steps {
                sh 'node app"'
            }
        }
        stage ('SonarQube Analysis') {
            environment {
                scannerHome = tool 'SonarQube Scanner'
            }
            steps {
                withSonarQubeEnv ('SonarQube') {
                    sh '${scannerHome}/bin/sonar-scanner'
                    sh 'cat .scannerwork/report-task.txt > /{JENKINS HOME DIRECTORY}/reports/sonarqube-report'
                }
            }
        }
        stage ('NPM Audit Analysis') {
            steps {
                sh '/{PATH TO SCRIPT}/npm-audit.sh'
            }
        }
        stage ('NodeJsScan Analysis') {
            steps {
                sh 'nodejsscan --directory `pwd` --output /{JENKINS HOME DIRECTORY}/reports/nodejsscan-report'
            }
        }
        stage ('Retire.js Analysis') {
            steps {
                sh 'retire --path `pwd` --outputformat json --outputpath /{JENKINS HOME DIRECTORY}/reports/retirejs-report --exitwith 0'
            }
        }
        stage ('Dependency-Check Analysis') {
            steps {
                sh '/{JENKINS HOME DIRECTORY}/dependency-check/bin/dependency-check.sh --scan `pwd` --format JSON --out /{JENKINS HOME DIRECTORY}/reports/dependency-check-report --prettyPrint'
            }
        }
        stage ('Audit.js Analysis') {
            steps {
                sh '/{PATH TO SCRIPT}/auditjs.sh'
            }
        }
        stage ('Snyk Analysis') {
            steps {
                sh '/{PATH TO SCRIPT}/snyk.sh'
            }
        }
        // stage ('Deploy to App Server') {
        //     steps {
        //         sh 'echo "Deploying App to Server"'
        //         sh 'ssh -o StrictHostKeyChecking=no chaos@10.0.2.20 "cd dvna && pm2 stop server.js"'
        //         sh 'ssh -o StrictHostKeyChecking=no chaos@10.0.2.20 "rm -rf dvna/ && mkdir dvna"'
        //         sh 'scp -r * chaos@10.0.2.20:~/dvna'
        //         sh 'ssh -o StrictHostKeyChecking=no chaos@10.0.2.20 "source ./env.sh && ./env.sh && cd dvna && pm2 start server.js"'
        //     }
        // }

    }
}