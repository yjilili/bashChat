#!/bin/bash
current=$1
names="currentNames.txt"

userMatch() {
	chmod 777 $names
	grep -q "$current" $names || echo $current >> $names  echo "Username is already in use in this chatroom. Please choose another username."
	return 0;	
}

roomMatch(){
	file="${current}.txt"
	if [ ! -e file ]
	then
		echo "touch $file"
		echo "created file: $file"
	fi 
}

if [ $2 = "name" ]
then
	userMatch $1
elif [ $2 = "room" ]
then	
	roomMatch $1
fi
