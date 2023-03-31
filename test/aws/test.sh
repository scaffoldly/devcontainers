#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "localstack" [ $(cat /tmp/localstack.txt | grep 1.4) ]

# Report result
reportResults
