#!/bin/bash

if [ "$#" == "0" ] ; then
  echo -e "\nusage: $0 config/config.yml\n"
  exit 1
fi

ROOT="`dirname $0`/.."

export GOSSBOT_CONFIG="$1"
shift

god -c "$ROOT"/config/god.rb $*
