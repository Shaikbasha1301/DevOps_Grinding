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

















#! /bin/bash

#to check the application is installed or not
#if  command  -v "docker" /dev/null;
#then
#       echo "installed"
#else
#       echo "not installed"
#fi


##Monitoring to check memory size


#echo "total memmory size: $(free -m | awk '/Mem/ {print $3 "MB" }')"

#VOlme size

#echo "total volume: $(df -h | awk '/devtmpfs/ {print $4 " out of " $2}')"
#echo "total volume: $(df -h | grep -E '/' | awk '{print $4 " out of " $2}')"



#functions
#app(){
#       local app_name=$1
#       yum install "${app_name}" -y
#}
#app "tree"
#app "docker"


##Directory stroage details

#echo "directory name"
#read directory
#echo "the $directory store: $(du -sh $directory | awk '{print $1}')"



#log file to s3

src=/var/log/httpd/access_log
max_size=1000000
if [[ $(wc -c < "$src") -gt $max_size ]];
then
        aws s3 cp $src s3://bucket_name
fi





















