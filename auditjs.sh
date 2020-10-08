#!/bin/bash

cd ${JENKINS_HOME}/workspace/juice-shop-pipeline
auditjs iq --username matteodalgrande97@gmail.com ${JENKINS_HOME}/reports/auditjs-report 2>&1

echo $? > /dev/null