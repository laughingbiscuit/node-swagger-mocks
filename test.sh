#!/bin/sh

set -e
set -x

assertions () {
  echo "Running tests"
  curl http://localhost:9000/app1/open-banking/v2.3/branches -sf | grep "OpeningHours" -q
  curl http://localhost:9000/app2/open-banking/v2.3/atms -sf | grep "ATMServices" -q
}

if assertions ; then echo "Success"; else echo "Fail"; fi
