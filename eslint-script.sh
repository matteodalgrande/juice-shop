#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
pwd
eslint --no-color --format json --ext .js --output-file ${JENKINS_HOME}/reports/eslint-report-server ./
# cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
# pwd
# eslint --no-color --format json --ext .js .ts --output-file ${JENKINS_HOME}/reports/eslint-report-frontend ./

# echo $? > /dev/null