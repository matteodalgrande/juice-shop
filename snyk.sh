#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
snyk auth ${SNYK_AUTH_TOKEN}
snyk test --json > ${JENKINS_HOME}/reports/snyk-report
snyk monitor

echo $? > /dev/null