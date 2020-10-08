#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
auditjs --username matteodalgrande97@gmail.com --token <auth_token> /var/lib/jenkins/reports/auditjs-report 2>&1

echo $? > /dev/null