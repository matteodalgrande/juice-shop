#!/bin/bash
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
pwd
jshint $(ls ./**/*.js | grep -v node | grep js) *.js > ${JENKINS_HOME}/reports/jshint-report

echo $? > /dev/null