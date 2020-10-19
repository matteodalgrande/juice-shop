pipeline {

    agent any
    tools {nodejs "nodejs"}

    stages {
    //ok
        stage ('Initialization') {
            steps {
                sh 'echo "Starting the build"'
            }
        }
    //ok
        stage ('Build') {
            steps {
                sh 'pwd'
                //fa npm install e include anche postinstall che richiama build
                sh 'npm install --package-lock'
            }
        }
    // // ok
    //     stage ('SonarQube Analysis') {
    //         environment {
    //             scannerHome = tool 'SonarQubeScanner'
    //         }
    //         steps {
    //             withSonarQubeEnv ('SonarQube') {
    //                 sh '${scannerHome}/bin/sonar-scanner'
    //                 sh 'cat .scannerwork/report-task.txt > ${JENKINS_HOME}/reports/sonarqube-report'
    //             }
    //         }
    //     }
    // //ok
    //     stage ('NPM Audit Analysis') {
    //         steps {
    //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/npm-audit.sh'
    //         }
    //     }
    // //ok    AGGIUNGEREI LA PARTE GUI, ma con un docker esterno alla pipeline
    //     stage ('NodeJsScan Analysis') {
    //         steps {
    //                 sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/njsscan.sh'
    //         }
    //     }
    // //ok    prettyPrint json
    //     stage ('Retire.js Analysis') {
    //         steps {
    //             sh 'retire --path ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --outputformat json --outputpath ${JENKINS_HOME}/reports/retirejs-report --exitwith 0'
    //             sh 'wget https://raw.githubusercontent.com/matteodalgrande/prettyPrint-json-file-python/master/prettyPrint-json-file-python.py'
    //             sh 'python3 prettyPrint-json-file-python.py ${JENKINS_HOME}/reports/retirejs-report'
                // sh 'rm prettyPrint-json-file-python.py'
    //         }
    //     }
        
    // //ok
        // stage ('Dependency-Check Analysis') {
        //     steps{
        // //        sh 'npm i --package-lock'
        //         sh '${JENKINS_HOME}/dependency-check/bin/dependency-check.sh --scan ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --format JSON --out ${JENKINS_HOME}/reports/dependency-check-reports --prettyPrint --disableAssembly'
        //         sh '${JENKINS_HOME}/dependency-check/bin/dependency-check.sh --scan ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --format HTML --out ${JENKINS_HOME}/reports/dependency-check-reports --disableAssembly'
        //     }
        // }

    // //ok
    //     stage ('Audit.js Analysis') {
    //         steps {
    //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/auditjs.sh'
    //         }
    //     }

    // //ok
    //     stage ('Snyk Analysis') {
    //          environment {
    //             SNYK_TOKEN = credentials('c444a2b3-f760-4725-a200-4e5cfe87f0ee')
    //         }
    //         steps {
    //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/snyk.sh $SNYK_TOKEN'
                
    //         }
    //     }

    // //ok
        // stage('standard-code and angular-linting'){
        //         steps{
        //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/standard_and_ng_linting.sh'
        //     }
        // }
    //  //ok
    //     stage('pre Code Climate'){
    //         steps{
    //             sh 'pwd'
    //             sh 'curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64  > ./cc-test-reporter'
    //             sh 'chmod 777  cc-test-reporter'
    //        //     sh 'npm install'
    //             sh  'export NODE_ENV=test'
    //             sh 'cp cc-test-reporter frontend/'
    //             sh './cc-test-reporter --debug before-build'
    //         }
    //     }
    // // //ok
    //     stage('Unit Test'){
    //         steps{
    //             sh 'pwd'
    //             sh 'cd frontend && ng test --watch=false --source-map=true'
    //             sh 'nyc --report-dir=./build/reports/coverage/server-tests mocha test/server'
    //         }
    //     }

    //  //ok
    //     stage('Integration Test'){
    //         steps {
    //             //chromedriver 83 serve solo per gli e2e, perche' gli altri usano l'ultima versione di chrome 
    //             sh 'pwd'
    //             sh 'rm chromedriver | true'
    //             sh 'wget https://chromedriver.storage.googleapis.com/83.0.4103.39/chromedriver_linux64.zip'
    //             sh 'unzip chromedriver_linux64.zip'
    //             sh 'rm chromedriver_linux64.zip'

    //             sh 'nyc --report-dir=./build/reports/coverage/api-tests ./node_modules/jest/bin/jest.js --silent --runInBand --forceExit'

    //             sh 'rm chromedriver'
    //         }
    //     }
    // //ok
    //     stage('Code Climate'){
    //         environment {
    //             CC_TEST_REPORTER_ID = credentials('	b979eca6-f885-43d7-b055-6f4cb572fe07')
    //         }
    //         steps{
    //             sh 'export GIT_COMMIT_SHA=$(git log | grep -m1 -oE \'[^ ]+$\')'
    //             sh 'export GIT_BRANCH=master'

    //             sh 'cd frontend && ./cc-test-reporter --debug format-coverage -t lcov -o ../build/reports/coverage/codeclimate.frontend.json ../build/reports/coverage/frontend-tests/lcov.info'
    //             sh './cc-test-reporter --debug format-coverage -t lcov -o build/reports/coverage/codeclimate.server.json build/reports/coverage/server-tests/lcov.info'
    //             sh './cc-test-reporter --debug format-coverage -t lcov -o build/reports/coverage/codeclimate.api.json build/reports/coverage/api-tests/lcov.info'
    //             sh './cc-test-reporter sum-coverage build/reports/coverage/codeclimate.*.json -p 3'
    //             sh './cc-test-reporter upload-coverage -r ${CC_TEST_REPORTER_ID}'
              
    //             sh 'rm cc-test-reporter && rm frontend/cc-test-reporter'
    //         }
    //     }

        stage('DAST - start app'){
            steps{
                sh 'npm start &'
            }
        }
        // stage('DAST - ZAP full scan'){
        //     steps{
        //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/zap-full-scan.sh'
        //     }
        // }

        stage ('DAST - W3AF ') {
            agent {
                label 'w3af'
            }
            environment {
                PATH_TO_SCRIPT = '/home/matteo/Desktop/w3af/scripts'
                PATH_TO_OUTPUT = '/home/matteo/Desktop/w3af'
                HOME_DIRECTORY = '/home/matteo'
            }
            steps {
                sh '${PATH_TO_SCRIPT}/w3af/w3af_console -s ${PATH_TO_SCRIPT}/configurazione.w3af'
                sh 'scp -r ${PATH_TO_OUTPUT}/w3af/output-w3af.json matteo@192.168.128.110:/${HOME_DIRECTORY}/'
                sh 'scp -r ${PATH_TO_OUTPUT}/w3af/output-w3af.html matteo@192.168.128.110:/${HOME_DIRECTORY}/'
                sh 'scp -r ${PATH_TO_OUTPUT}/w3af/output-w3af.txt matteo@192.168.128.110:/${HOME_DIRECTORY}/'
            }
        }

        stage ('Copy Report to Jenkins Home') {
            environment {
                HOME_DIRECTORY = '/home/matteo'
            }
            steps {
                sh 'cp ${HOME_DIRECTORY}/output-w3af.json ${JENKINS_HOME}/reports/w3af-report.json'
                sh 'cp ${HOME_DIRECTORY}/output-w3af.html ${JENKINS_HOME}/reports/w3af-report.html'
                sh 'cp ${HOME_DIRECTORY}/output-w3af.txt ${JENKINS_HOME}/reports/w3af-report.txt'                                
            }
        }

        // stage('e2e'){
        //     steps{
        //         sh 'spm run preprotractor'
        //         sh 'npm run protractor'
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
        // stage('ZAP scanner'){
        //     steps{
        //         sh 'mkdir /zap/wrk/'
        //         sh ''
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
 

//NON COMPLETO devi mettere i report 
    // post{
    //     always{
    //         echo 'SONO IL POST!'
    //     }
    // //https://www.jenkins.io/doc/book/pipeline/syntax/#post
    //https://medium.com/@gustavo.guss/jenkins-archive-artifact-save-file-in-pipeline-ac6d8b569c2c
    // }

}