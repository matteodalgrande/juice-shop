#!/bin/bash
wget https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64  > ./cc-test-reporter
chmod 777  cc-test-reporter

echo $GIT_COMMIT
GIT_COMMIT=$(git log | grep -m1 -oE \'[^ ]+$\')
echo $GIT_COMMIT

echo $GIT_BRANCH
GIT_BRANCH=master
echo $GIT_BRANCH

./cc-test-reporter --debug format-coverage -t lcov -o build/reports/coverage/codeclimate.frontend.json build/reports/coverage/ng/lcov.info
./cc-test-reporter --debug format-coverage -t lcov -o build/reports/coverage/codeclimate.server.json build/reports/coverage/server-tests/lcov.info
./cc-test-reporter --debug format-coverage -t lcov -o build/reports/coverage/codeclimate.api.json build/reports/coverage/api-tests/lcov.info
./cc-test-reporter --debug sum-coverage build/reports/coverage/codeclimate.*.json -p 3
./cc-test-reporter --debug upload-coverage
./cc-test-reporter --debug after-test