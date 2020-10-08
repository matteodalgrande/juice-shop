#!/bin/bash

SNYK_TOKEN = $1

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
snyk auth $SNYK_TOKEN
snyk test --json > ${JENKINS_HOME}/reports/snyk-report
snyk monitor

echo $? > /dev/null