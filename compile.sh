#!/bin/bash

BUILD_OUTPUT=$(ng build |& tail -1)

IFS='-'

read -a STR_ARR <<< "$BUILD_OUTPUT"

BUILD_AT=`echo ${STR_ARR[0]-} ${STR_ARR[1]-} ${STR_ARR[2]-} | sed 's/Build at: //g' | sed 's/ /-/g' | sed 's/.$//'`
VERSION_HASH=`echo ${STR_ARR[3]} | sed 's/ Hash: //g' | sed 's/ //g'`
TIME_SPENT=`echo ${STR_ARR[4]} | sed 's/ Time: //g'`

echo "{ \"version\": \"${VERSION_HASH}\", \"build_at\": \"${BUILD_AT}\", \"time\": \"${TIME_SPENT}\" }" | jq .
