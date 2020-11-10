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
    // //ok
        // stage ('Build') {
        //     steps {
        //         sh 'pwd'
        //         //fa npm install e include anche postinstall che richiama build
        //         sh 'npm install --package-lock'
        //     }
        // }
    // // ok
        // stage ('SAST - SonarQube Analysis') {
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
    // //ok
        // stage ('SAST - NPM Audit Analysis') {
        //     steps {
        //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/npm-audit.sh'
        //     }
        // }
    // // //ok    AGGIUNGEREI LA PARTE GUI, ma con un docker esterno alla pipeline
    //     stage ('SAST - NodeJsScan Analysis') {
    //         steps {
    //                 sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/njsscan.sh'
    //         }
    //     }
    // // //ok    prettyPrint json
    //     stage ('SAST - Retire.js Analysis') {
    //         steps {
    //             sh 'retire --path ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --outputformat json --outputpath ${JENKINS_HOME}/reports/retirejs-report --exitwith 0'
    //             sh 'wget https://raw.githubusercontent.com/matteodalgrande/prettyPrint-json-file-python/master/prettyPrint-json-file-python.py'
    //             sh 'python3 prettyPrint-json-file-python.py ${JENKINS_HOME}/reports/retirejs-report'
    //             sh 'rm prettyPrint-json-file-python.py'
    //         }
    //     }
        
    // // //ok
    //     stage ('SAST - Dependency-Check Analysis') {
    //         steps{
    //     //        sh 'npm i --package-lock'
    //             sh '${JENKINS_HOME}/dependency-check/bin/dependency-check.sh --scan ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --format JSON --out ${JENKINS_HOME}/reports/dependency-check-reports --prettyPrint --disableAssembly'
    //             sh '${JENKINS_HOME}/dependency-check/bin/dependency-check.sh --scan ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --format HTML --out ${JENKINS_HOME}/reports/dependency-check-reports --disableAssembly'
    //         }
    //     }

    // // //ok
    //     stage ('SAST - Audit.js Analysis') {
    //         steps {
    //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/auditjs.sh'
    //         }
    //     }

    // // //ok
    //     stage ('SAST - Snyk Analysis') {
    //          environment {
    //             SNYK_TOKEN = credentials('c444a2b3-f760-4725-a200-4e5cfe87f0ee')
    //         }
    //         steps {
    //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/snyk.sh $SNYK_TOKEN'
                
    //         }
    //     }

    // //ok   
    //     stage('standard-code and angular-linting'){
    //          steps{
    //             sh 'pwd'
    //             sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/standard_and_ng_linting.sh'
    //         }
    //     }

    // // //ok
    // stage ('LINT - JShint') {
    //     steps {
    //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/jshint-script.sh'
    //     }
    // }
    
    // // ok
    // stage ('LINT -ESlint') {
    //     steps {
    //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/eslint-script.sh'
    //     }
    // }

    // //ok
    // stage ('Generating Software Bill of Materials') {
    //     steps {
    //         //Building the dependencies to generate SBoM
    //         //sh 'npm install'
    //         sh 'cyclonedx-bom -o ${JENKINS_HOME}/reports/sbom.xml'
    //     }
    //}

    // //ok
    //     stage('Coverage Test - pre Code Climate'){
    //         steps{
    //             sh 'pwd'
    //             sh 'npm install'
    //             sh 'curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64  > ./cc-test-reporter'
    //             sh 'chmod 777  cc-test-reporter'
    //        //     sh 'npm install'
    //             sh 'export NODE_ENV=test'
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
    //     stage('Coverage Test - Code Climate'){
    //         environment {
    //             CC_TEST_REPORTER_ID = credentials('b979eca6-f885-43d7-b055-6f4cb572fe07')
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

    // // //ok
    // //     stage('DAST - start app'){
    // //         steps{
    // //             sh 'pwd'
    // //             
    // //         }
    // //     }

    //ok
        // stage('DAST - ZAP full scan'){
        //     steps{
        //         sh 'npm start &'
        //         sh '${JENKINS_HOME}/workspace/juice-shop-pipeline/zap-full-scan.sh'
        // // se il report e' in .json allora usa il prettyPrint.py
        //     }
        // }

    // //ok
    //     stage ('DAST - W3AF ') {
    //         agent {
    //             label 'w3af'
    //         }
    //         environment {
    //             PATH_TO_SCRIPT = '/home/matteo/Desktop/w3af'
    //             PATH_TO_OUTPUT = '/home/matteo/Desktop'
    //             HOME_DIRECTORY = '/home/matteo'
    //             SSH_PASSWORD = credentials('695f6cae-4a22-4f72-b6d4-e1f61510d3f7')
    //         }
    //         steps {
    //             sh 'pwd'
    //             //sh '${PATH_TO_SCRIPT}/w3af_console -s ${PATH_TO_SCRIPT}/scripts/configurazione.w3af'
    //             sh '${PATH_TO_SCRIPT}/w3af_console -s ${PATH_TO_SCRIPT}/scripts/xss_simple.w3af'
    //             sh '''
    //                 sshpass -p ${SSH_PASSWORD} scp -r ${PATH_TO_OUTPUT}/w3af/output-w3af.json matteo@192.168.128.110:${HOME_DIRECTORY}/ || \
    //                 sshpass -p ${SSH_PASSWORD} scp -r ${PATH_TO_OUTPUT}/w3af/output-w3af.html matteo@192.168.128.110:${HOME_DIRECTORY}/ || \
    //                 sshpass -p ${SSH_PASSWORD} scp -r ${PATH_TO_OUTPUT}/w3af/output-w3af.txt matteo@192.168.128.110:${HOME_DIRECTORY}/ 
    //                 '''
    //             sh '''
    //                 rm ${PATH_TO_OUTPUT}/w3af/output-w3af.json || \
    //                 rm ${PATH_TO_OUTPUT}/w3af/output-w3af.html || \
    //                 rm ${PATH_TO_OUTPUT}/w3af/output-w3af.txt
    //                 '''
                
    //         }
    //     }
    // //ok
        // stage ('DAST - Copy Report to Jenkins Home') {
        //     environment {
        //         HOME_DIRECTORY = '/home/matteo'
        //     }
        //     steps {
        //         sh '''
        //             cp ${HOME_DIRECTORY}/output-w3af.json ${JENKINS_HOME}/reports/w3af-report.json || \
        //             cp ${HOME_DIRECTORY}/output-w3af.html ${JENKINS_HOME}/reports/w3af-report.html || \
        //             cp ${HOME_DIRECTORY}/output-w3af.txt ${JENKINS_HOME}/reports/w3af-report.txt
        //             '''
        //         //qua non posso eliminare il file almeno che non assegno a jenkins sudo group

        //         // sh '''
        //         //     rm ${HOME_DIRECTORY}/output-w3af.json || \
        //         //     rm ${HOME_DIRECTORY}/output-w3af.html || \
        //         //     rm ${HOME_DIRECTORY}/output-w3af.txt
        //         //     '''
        //     }
        // }


        // // stage('TEST e2e'){
        // //     steps{
        // //         sh 'npm run protractor'
        // //     }
        // // }
        stage ('e2e test') {
                // e2e test--> protractor.conf.js aggiungere nell'array exports.config la linea chromeDriver:'./chromedriver', e scricare il driver chrome 83 e inserirlo nella main directory;    -->        commentare le linee dalla 88 alla 104 in test/e2e/complianSpec.js sennò il server non risponde più",
            steps {
                //preprotractor
                sh 'npm dedupe && node ./node_modules/protractor/bin/webdriver-manager update --gecko false'
                //protractor
                sh 'Xvfb :0 -ac -screen 0 1024x768x24 &'
                sh 'npm run e2e'
                // //e2e test
                // sh 'node test/e2eTests.js'
            }
        }

        // stage ('Start App') {
        //     steps {
        //         sh 'node app"'
        //     }
        // }

//ok
        // stage ('Deploy to VM App Server') {
            // when{
            //     branch 'staging'
            // }
        //     environment {
        //         SSH_PASSWORD = credentials('695f6cae-4a22-4f72-b6d4-e1f61510d3f7')
        //     }
        //     steps {
        //         sh 'echo "Deploying App to VM app Server"'
        //         //-o option
        //         sh 'rm -r node_module && cd frontend && rm -r node_module'
        //         sh 'sshpass -p ${SSH_PASSWORD} ssh -o StrictHostKeyChecking=no matteo@192.168.128.112 "pkill -15 node"'
        //         sh 'sshpass -p ${SSH_PASSWORD} ssh -o StrictHostKeyChecking=no matteo@192.168.128.112 "rm -rf juice-shop/ && mkdir juice-shop"'
        //         sh 'sshpass -p ${SSH_PASSWORD} scp -r * matteo@192.168.128.112:~/juice-shop'
        //         sh 'sshpass -p ${SSH_PASSWORD} ssh -o StrictHostKeyChecking=no matteo@192.168.128.112 ". ~/.nvm/nvm.sh && . ~/.profile && . ~/.bashrc && cd juice-shop && npm install; npm start > /dev/null 2>&1 &"'
        //     }
        // }

//ok
        // stage ('Deploy to Heroku App Server - Production') {
            // when{
            //     branch 'master'
            // }
        //     environment {
        //         HEROKU_API_KEY = credentials('06f06453-161e-439e-99ef-8624f6251086')
        //     }
        //     steps {
        //         sh 'dpl --provider=heroku --app=${HEROKU_APP_PRODUCTION} --api-key=${HEROKU_API_KEY} --cleanup'
        //     }
        // }


// //ok
//         stage('Package - Grunt'){
//             when{
//                 branch 'master'
//             }
//             steps{
//                 sh 'pwd'
//                 sh 'npm prune --production && npm dedupe'
//                 sh 'cd frontend && npm prune --production && npm dedupe'
//                 sh 'grunt package'
//                 //qua posso caricare i file all'interno di dist/ dove voglio nel web
//             }
//         }

   //ok          
        // stage('Package - Docker'){
        //     environment {
        //         DOCKER_HUB_PASSWORD = credentials('55ee03f5-0e0d-444d-bb52-ad3aa90c9636')
        //     }
        //     steps{
        //         sh 'docker build -t matteodalgrande/juiceshopdevsecops:12.0.3 .'
        //         sh 'docker login --username=matteodalgrande --password=${DOCKER_HUB_PASSWORD}'
        //         sh 'docker push matteodalgrande/juiceshopdevsecops:12.0.3'
        //     }
        // }  

//  //ok DA AGGIUSTARE TUTTI I REPORT
//         stage('prova'){
//             steps{
//                 // sh 'echo "prova" > /var/lib/jenkins/reports/prova.txt'
//                 sh 'pwd'
//                 sh 'echo "prova2" >provino.txt'
//                 sh 'echo "prova" > prova.txt'
//                 archiveArtifacts artifacts: 'provino.txt,prova.txt', fingerprint: true
//             }
//         }
    
    }
 
// //ok
//     post{
//         always{
//             // archiveArtifacts artifacts: 'provino.txt', followSymlinks: false
//           copyArtifacts filter: 'provino.txt,prova.txt', fingerprintArtifacts: true, projectName: '${JOB_NAME}', selector: specific('${BUILD_NUMBER}')
//         }
//     // //https://www.jenkins.io/doc/book/pipeline/syntax/#post
//     //https://medium.com/@gustavo.guss/jenkins-archive-artifact-save-file-in-pipeline-ac6d8b569c2c
//     }

}