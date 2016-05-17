#!/bin/bash
current=$1

roomMatch(){
	file="${current}"
	if [ ! -e file ]
	then
		mkdir $file
		touch ./$file/room.txt
		touch ./$file/user.txt
		cd $file
		echo "created and moved into file: $file"
	elif [ -e file ]
	then
		echo "file exists!!! moving into $file"
		cd $file
	else
		echo "error"
	fi
}

userMatch() {
	chmod 777 user.txt
	if [ -e "user.txt" ]
	then 
		echo "user file exists!"
		echo "$1" >> user.txt
		#grep -q "$current" $names || $current >> $names  echo "Username is already in use in this chatroom. Please choose another username."
	elif [ ! -e file ]
	then
		echo "user file does not exists"
		echo "currently in file $PWD"	
	else
		echo "error"
	fi
}


if [ $2 == 'room' ]
then
	roomMatch $1
elif [ $2 == 'user' ]
then	
	userMatch $1
else echo "error, input not name or room"
fi
