#!/bin/bash

base_dir=$(cd `dirname $0`;pwd)

mvn clean package -DskipTests
if [[ $? != 0 ]];then
	echo "davinci back end compile failed ......"
	exit 1
fi
cd $base_dir/webapp && cnpm run build
