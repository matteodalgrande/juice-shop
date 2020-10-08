#!/bin/bash

##questo e' qui dentro perche' sh non suppporta source perche' e' un integrazione di bash
rm -r ${JENKINS_HOME}/venv || true
virtualenv ${JENKINS_HOME}/venv -p python3
source ${JENKINS_HOME}/venv/bin/activate
pip install nodejsscan
python3 -m njscan
python3 -m njsscan ${JENKINS_HOME}/workspace/juice-shop-pipeline/routes/profileImageUrlUpload.js --json -o /var/lib/jenkins/reports/njsscan-report-json
# njsscan ${JENKINS_HOME}/workspace/juice-shop-pipeline/ --json -o /var/lib/jenkins/reports/njsscan-report-json
deactivate