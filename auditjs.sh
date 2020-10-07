#!/bin/bash

cd /var/lib/jenkins/workspace/node-app-pipeline
auditjs --username ayushpriya10@gmail.com --token <auth_token> /var/lib/jenkins/reports/auditjs-report 2>&1

echo $? > /dev/null