#! /bin/bash


#variables

name="rehan"
echo -e "welocme to bash scripting \n myname is $name \tstoicism"


#runtime vairables

echo "enter your username"
read username
echo "my username is $username"
echo "enter password"
read passwd
echo "it is your $passwd"

#Silent Proxy

echo "Enter your name"
read name
echo "your $name"
read -sp "enter your password" pass
echo "this is your $pass"


#Argumets

echo "my name is $1"
echo "I'm from $2"
echo "workinf as an $3"
#cho "print all the argumrnts $@"
echo "file $0"



#conditions

#name=""
name="rehan"
#if [[ -z $name ]];
if [[ -n $name ]];
then
	echo "not empty"
else
	echo "empty"
fi


































