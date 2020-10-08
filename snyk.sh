#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
snyk auth 68017856-5d94-4242-bdf1-cda8d594d79a
snyk test --json > ${JENKINS_HOME}/reports/snyk-report
snyk monitor

echo $? > /dev/null