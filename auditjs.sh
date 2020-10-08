#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
auditjs ossi ${JENKINS_HOME}/reports/auditjs-report 2>&1

echo $? > /dev/null