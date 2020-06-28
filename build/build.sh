#!/bin/bash

base_dir=$(cd `dirname $0`;pwd)/../

# 编译后端项目
cd ${base_dir} && mvn clean package -DskipTests
if [[ $? != 0 ]];then
	echo "davinci back end compile failed ......"
	exit 1
fi
# 安装npm包：npm install --registry=https://registry.npm.taobao.org
cd ${base_dir} /webapp && cnpm install
# 编译前端项目: nmp run build
cd ${base_dir}/webapp && cnpm run build
