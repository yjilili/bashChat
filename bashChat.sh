#!/bin/bash

inClass="1"
if [ $# -lt 1 ]
then
	echo "Please pass chat room name as argument"
	exit 1
elif [ $# -lt 2 ]
then
	room=$1
	./checkname.sh $1 "room"
	cd $1
	read -p "What is your nick name?" name
	../checkname.sh $name "user"
	inClass="0"
else
	echo "Please enter one chat room name"
	exit 1
fi

while [ $inClass -eq "0" ]
do
	STR=$'Please choose option:\n\n(1)Exit\n(2)See Users\n(3)Enter Text\n'
	read -p "$STR" option
	if [ $option -eq "2" ]
	then
		cat user.txt
		echo "~~$name entered chat room $1~~"	
	elif [ $option -eq "1" ]
	then
		echo "exiting chat room"
		inClass=1
	elif [ $option -eq "3" ]
	then
		read -p "Enter text: " entry
		echo "$name : $entry"
		echo "$name : $entry" >> room.txt
	else
		echo "please enter option"
	fi
done
