#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
snyk auth 444ec264-8ca2-4384-859b-df155ed5ef6d
snyk test --json > ${JENKINS_HOME}/reports/snyk-report
snyk monitor

echo $? > /dev/null