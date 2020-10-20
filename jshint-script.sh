#!/bin/bash
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
pwd
jshint $(ls ./**/*.js | grep -v node | grep js) *.js > ${JENKINS_HOME}/reports/jshint-report-server
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline/frontend
jshint $(ls ./**/*.ts | grep -v node | grep ts) *.ts > ${JENKINS_HOME}/reports/jshint-report-frontend

echo $? > /dev/null