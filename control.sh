#!/bin/bash

install_control=$INPUT_INSTALL_CONTROL
global_install=$INPUT_GLOBAL
config_file=$INPUT_CONFIG

# If global is required (or override with install) we need to install
# the package manually so dependencies can be met
if [[ $global_install == *"true"* ]] || [[ $install_control == *"true"* ]]
then
	npm i control-core
fi

if [[ $global_install == *"true"* ]]
then
	npx control-core -c $config_file
else
	./node_modules/.bin/control -c $config_file
fi
