#! /bin/bash


##variables.....................

#name="rehan"
#echo -e "welocme to bash scripting \n myname is $name \tstoicism"


##runtime vairables......................

#echo "enter your username"
#read username
#echo "my username is $username"
#echo "enter password"
#read passwd
#echo "it is your $passwd"

##Silent Proxy

#echo "Enter your name"
#read name
#echo "your $name"
#read -sp "enter your password" pass
#echo "this is your $pass"


##Argumets

#echo "my name is $1"
#echo "I'm from $2"
#echo "workinf as an $3"
#echo "print all the argumrnts $@"
#echo "file $0"



#conditions

#name=""
#name="rehan"
#if [[ -z $name ]];
#if [[ -n $name ]];
#then
#	echo "not empty"
#else
#	echo "empty"
#fi


#Compare the strings

#name1="rehan"
#name2="shaik"
#name3="rehan"
#if [[ $name1 == $name3 ]];
#if [[ $name1 == $name2 ]];
#then	
#	echo "satisfied"
#else
#	echo "notsatisfied"
#fi


#compare the numbers

#n=13
#m=83

#if [[ $n -eq $m ]];
#if [[ $n -gt $m ]];
#if [[ $n -lt $m ]];
#if [[ $n -le $m ]];
#if [[ $n -ge $m ]];
#then
#	echo "same"
#else
#	echo "notsame"
#fi





#echo "enter the name"
#read name
#read -sp  "enter the password" pass
#if [[ $name == "rehan" && $pass == 1234 ]];
#if [[ $name == "rehan" ||  $pass == 1234 ]];	
#then
#	echo -e "\nlogin"
#else
#	echo -e "\nwrong credentials"
#fi	



##Nested If
#
#echo "username"
#read name
#if [[ $name == "shaik" ]];
#then
#	read -sp "password" pass
#	if [[ $pass == 1234 ]];
#	then
#		echo -e "\nstaisfied"
#	else
#
#		echo -e "\nwrongpass"
#	fi	
#else
#	echo -e "\nceck the user"	
#fi





#for and while

#for count in {1..7}
#do	
#	echo $count
#done	


##While

c=2
while [[ $c -eq 8 ]];
do
	echo $c
	c=$((c+1))
done	







