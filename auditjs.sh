#!/bin/bash

cd /var/lib/jenkins/workspace/juice-shop-pipeline
auditjs --username matteodalgrande97@gmail.com /var/lib/jenkins/reports/auditjs-report 2>&1

echo $? > /dev/null
