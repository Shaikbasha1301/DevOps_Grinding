#! /bin/bash

#Root and nonroot

#if [[ $(whoami) == "root" ]];
#then
#	echo "root user"
#else
#	echo "non-root user"	
#fi

#Creating folders based on range

#name=$1
#starts=$2
#end=$3

#eval mkdir $name{$starts..$end}

#backup 

#src=/var/log/httpd/access_log
#dest=mybackup
#time=$(date +"%Y-%m-%d-%H-%M-%S")
#backup=$dest/$time.tgz

#echo "taking backup"

#tar zvcf $backup --absolute-names $src



#log_Rotation

#src=/root/logfile
#maxsize=1000000
#dest=/root/log.bck
#if [[ $(wc -c < "$src") -gt $maxsize ]];
#then
#	 mv $src $dest
#	 touch $src
#fi



#creating user by actions


action=$1
#username=$2

#case $action in
#	"add")
#		useradd "$username"
#		;;
#	"modify")
#		usermod -s /bin/bash  "$username"	
#		;;
#	"delete")	
#		userdel -r "$username"
#		;;
#	*)		
#	exit 1
#esac


#Check the status of services


app=("docker" "httpd")
for r in "${app[@]}";
do
	if  systemctl is-active --quiet "$r";
	then
		echo "running"
	else
		echo "not"
	fi
done	

































