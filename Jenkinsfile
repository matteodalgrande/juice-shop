pipeline {

    agent any
    tools {nodejs "nodejs"}
    tools {snyk 'snyk_v2'}
    stages {
    
    //ok
        stage ('Initialization') {
            steps {
                sh 'echo "Starting the build"'
            }
        }
    // //ok
        // stage ('Build') {
        //     steps {
        //         //fa npm install e include anche postinstall che richiama build
        //         sh 'whoami'
        //         sh 'npm install'
        //     }
        // }
    //ok
        // stage ('SonarQube Analysis') {
        //     environment {
        //         scannerHome = tool 'SonarQubeScanner'
        //     }
        //     steps {
        //         withSonarQubeEnv ('SonarQube') {
        //             sh '${scannerHome}/bin/sonar-scanner'
        //             sh 'cat .scannerwork/report-task.txt > ${JENKINS_HOME}/reports/sonarqube-report'
        //         }
        //     }
        // }
    //ok
        // stage ('NPM Audit Analysis') {
        //     steps {
        //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/npm-audit.sh'
        //     }
        // }
    //ok    AGGIUNGEREI LA PARTE GUI, ma con un docker esterno alla pipeline
        // stage ('NodeJsScan Analysis') {
        //     steps {
        //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/njsscan.sh'
        //     }
        // }
    //ok    prettyPrint json
        // stage ('Retire.js Analysis') {
        //     steps {
        //         sh 'retire --path ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --outputformat json --outputpath ${JENKINS_HOME}/reports/retirejs-report --exitwith 0'
        //         sh 'wget https://raw.githubusercontent.com/matteodalgrande/prettyPrint-json-file-python/master/prettyPrint-json-file-python.py'
        //         sh 'python3 prettyPrint-json-file-python.py ${JENKINS_HOME}/reports/retirejs-report'
        //     }
        // }
        
    //?????????????????????????????????????????????????????????????????????????
        // stage ('Dependency-Check Analysis') {
        //         sh '${JENKINS_HOME}/dependency-check/bin/dependency-check.sh --scan `pwd` --format JSON --out ${JENKINS_HOME}/reports/dependency-check-report --prettyPrint'
        //     }
        // }

    //ok
        // stage ('Audit.js Analysis') {
        //     steps {
        //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/auditjs.sh'
        //     }
        // }
       
        snykSecurity failOnIssues: false, snykInstallation: 'snyk_v2', snykTokenId: 'ab486ecf-7c34-478e-b567-3826dc975512'
        stage ('Snyk Analysis') {
            steps {
                sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/snyk.sh'
                
            }
        }

        // stage('standard-code and angular-linting'){
        //         //Standard fix formatta automaticamente il codice in un formato standard
        //         //il linting in angular controlla la qualita' del codice angular nel progetto
        //         steps{
        //         sh 'whoami'
        //         sh 'npx standard --fix && cd frontend && npx ng lint --format=json > /{JENKINS HOME DIRECTORY}/reports/ng-lint-report && cd ..'
        //     }
        // }

        // stage ('Unit test') {
        //     steps {
        //         //test mocha on chromium
        //         sh 'cd frontend && ng test --watch=false --source-map=false --browsers=ChromiumHeadless && cd .. && nyc --report-dir=./build/reports/coverage/server-tests mocha test/server'
    
        //     }
        // }

        // stage ('Integration test') {
        //     // integration test--> cambi il file node_modules/jest/node_modules/jest_cli/bin/jest.js sostituendo     process.env.NODE_ENV = 'test'; con     process.env.NODE_ENV = ''; e poi elimini[commenti l'ultimo test dentro l'if] il file /test/api/fileUploadSpec.js ",
        //     steps {
        //         //frisby
        //         sh 'nyc --report-dir=./build/reports/coverage/api-tests jest --silent --runInBand --forceExit'
        //     }
        // }
        // stage ('e2e test') {
        //         // e2e test--> protractor.conf.js aggiungere nell'array exports.config la linea chromeDriver:'./chromedriver', e scricare il driver chrome 83 e inserirlo nella main directory;    -->        commentare le linee dalla 88 alla 104 in test/e2e/complianSpec.js sennò il server non risponde più",
        //     steps {
        //         //preprotractor
        //         sh 'npm dedupe && node ./node_modules/protractor/bin/webdriver-manager update --gecko false'
        //         //protractor
        //         sh 'npm run e2e'
        //         //e2e test
        //         sh 'node test/e2eTests.js'
        //         //vagrant 
        //         sh 'cd vagrant && vagrant up'
        //     }
        // }
        // stage ('Start App') {
        //     steps {
        //         sh 'node app"'
        //     }
        // }


// dast:
//     stage: dast
//     variables:
//         DAST_FULL_SCAN_ENABLED: "true"
//         website: "https://gitlab-nodejs-staging.herokuapp.com"
//     script:
//         - mkdir /zap/wrk/
//         - pwd
//         - whoami
//         - /zap/zap-baseline.py -g gl-dast-report.json -t $website
//         - if [ -e "/zap/wrk/gl-dast-report.json" ]; then cp "/zap/wrk/gl-dast-report.json" .; else mkdir "/zap/wrk/" && touch "/zap/wrk/gl-dast-report.json" && cp "/zap/wrk/gl-dast-report.json" .; fi
//         - cp /zap/wrk/gl-dast-report.json .
//         - wget https://raw.githubusercontent.com/matteodalgrande/read-write-json-file-python/master/read-write-json-file.py
//         - chmod 777 read-write-json-file.py
//         - apt-get install python3
//         - python3 ./read-write-json-file.py
//     artifacts:
//         paths:
//             - gl-dast-report.json
//         when: always

// dast2:
//     stage: dast2
// #    image: owasp/zap2docker-weekly
//     image: registry.gitlab.com/gitlab-org/security-products/zaproxy
//     variables:
//         website: "https://gitlab-nodejs-staging.herokuapp.com"
//     script:
//         - mkdir /zap/wrk/
//         - pwd
//         - whoami
//         - /zap/zap-baseline.py -g gl-dast-report.json -t $website
//         - if [ -e "/zap/wrk/gl-dast-report.json" ]; then cp "/zap/wrk/gl-dast-report.json" .; else mkdir "/zap/wrk/" && touch "/zap/wrk/gl-dast-report.json" && cp "/zap/wrk/gl-dast-report.json" .; fi
//         - cp /zap/wrk/gl-dast-report.json .
//         - wget https://raw.githubusercontent.com/matteodalgrande/read-write-json-file-python/master/read-write-json-file.py
//         - chmod 777 read-write-json-file.py
//         - apt-get install python3
//         - python3 ./read-write-json-file.py
//     artifacts:
//         paths:
//             - gl-dast-report.json
//         when: always





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