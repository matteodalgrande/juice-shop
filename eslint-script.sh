#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
pwd
eslint --no-color --format json --ext .js --output-file ${JENKINS_HOME}/reports/eslint-report-server ./
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline/frontend
pwd
eslint --no-color --format json --ext .ts --output-file ${JENKINS_HOME}/reports/eslint-report-frontend ./

cd ${JENKINS_HOME}/reports/
pwd
wget https://raw.githubusercontent.com/matteodalgrande/prettyPrint-json-file-python/master/prettyPrint-json-file-python.py
python3 prettyPrint-json-file-python.py ${JENKINS_HOME}/reports/eslint-report-frontend
python3 prettyPrint-json-file-python.py ${JENKINS_HOME}/reports/eslint-report-frontend
rm prettyPrint-json-file-python.py

echo $? > /dev/null