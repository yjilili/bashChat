#!/bin/bash

inClass="1"
if [ $# -lt 1 ]
then
	echo "Please pass chat room name as argument"
	exit 1
elif [ $# -lt 2 ]
then
	read -p "What is your nick name?" name
	#checkname $name
#	inClass="0"
else
	echo "Please enter one chat room name"
	exit 1
fi

while [ $inClass -eq 0 ]
do
	read -pe "Please choose option:\n\n(1)Exit\n(2)See Users\n(3)Enter Text\n" option
	if [ $option -eq 0 ]
	then
		echo "~~"
		inClass=1
	else
		echo "here"
		inClass=1
	fi
done
