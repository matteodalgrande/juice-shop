#!/bin/bash
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline

jshint $(ls ./*.js ./*.ejs | grep -v node | grep js) *.js > ${JENKINS_HOME}/reports/jshint-report

echo $? > /dev/null