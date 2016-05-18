#!/bin/sh
SCRIPTDIR="$( cd "$(dirname $0)" && pwd )"
cd $SCRIPTDIR
if [ ! -d .git ]; then
	echo "\"-\""
else
	commit=`git rev-parse HEAD`
	echo "\"$commit\""
fi
