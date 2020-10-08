#!/bin/bash

cd {JENKINS_HOME}/workspace/juice-shop-pipeline
snyk auth a46f83c2-3b3b-45d4-86c4-2dd897d8b594
snyk test --json > ${JENKINS_HOME}/reports/snyk-report
snyk monitor

echo $? > /dev/null