#!/bin/bash

# //Standard fix formatta automaticamente il codice in un formato standard
# //il linting in angular controlla la qualita' del codice angular nel progetto

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline/
npx standard --fix
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline/frontend 
npm ng lint --format=json > ${JENKINS_HOME}/reports/ng-lint-report 
cd ..
wget https://raw.githubusercontent.com/matteodalgrande/prettyPrint-json-file-python/master/prettyPrint-json-file-python.py
python3 prettyPrint-json-file-python.py ${JENKINS_HOME}/reports/ng-lint-report
rm prettyPrint-json-file-python.py