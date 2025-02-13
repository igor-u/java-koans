#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide a parameter"
  exit 1
fi

koanClass="$1"

git add koans/src/$koanClass.java

git commit -m "ponder: $koanClass"

exit 0
