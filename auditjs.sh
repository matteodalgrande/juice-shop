#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
auditjs ossi --json 2>&1 > ${JENKINS_HOME}/reports/auditjs-report

echo $? > /dev/null