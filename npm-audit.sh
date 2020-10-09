#!/bin/bash
cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
## npm install --package-lock
npm audit --json > ${JENKINS_HOME}/reports/npm-audit-report

#$? è una variabile che contiene il valore di ritorno dell'ultimo comando eseguito.
echo $? > /dev/null
