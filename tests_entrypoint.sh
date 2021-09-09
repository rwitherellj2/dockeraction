#!/bin/bash

TESTS=`pwd`/tests

iris start $ISC_PACKAGE_INSTANCENAME quietly \

/bin/echo -e '' \
  "Do ##Class(UnitTest.Test).Hello()\n" \
  'halt\n' \
| iris session $ISC_PACKAGE_INSTANCENAME -U USER | tee /tmp/tests.log

iris stop $ISC_PACKAGE_INSTANCENAME quietly

if ! grep -iq "All PASSED" /tmp/tests.log 
then
  exit 1
fi