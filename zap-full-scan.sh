#!/bin/bash
docker run --rm --name zap2 -u zap -v "/var/lib/jenkins/reports":/zap/wrk/:rw -t owasp/zap2docker-stable zap-full-scan.py -d -j -t http://192.168.128.140:3000 -J zap-report.json -r zap-report.html -z "auth.loginurl=http://192.168.128.140:3000/#/login  \
                        auth.username='admin@juice-sh.op' \
                        auth.password='admin123' \
                        auth.username_field='email' \
                        auth.password_field='password' \
                        auth.submit_field='loginButton' \
                        auth.auto=1"

echo $? > /dev/null