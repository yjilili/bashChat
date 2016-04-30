#!/bin/bash

checkname () {
	echo "name checked"
	for arg in $*
	do
		echo $arg
	done
	exit 1
}


