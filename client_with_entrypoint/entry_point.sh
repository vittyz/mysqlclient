#!/bin/sh

if [ $# = "0" ]
then
   echo "" 
   echo "Please input parameter.."
   echo "     1 is Host"
   echo "     2 is Username"
   echo "     3 is Password"
   echo "     4 is Database"
   echo "     5 is Command"
   exit 13;
else
   export host=$1
   export user=$2
   export passwd=$3
   export database=$4
   export cmd=$5 
fi 


if [ $1 = "sh" ]
then
   sh
else
	if [ $5 = "file" ]
	then	
		export cmdfile=$6
	
		mysql --host $host --user=$user --password=$passwd --database=$4 < $cmdfile 
	else
		mysql --host $host --user=$user --password=$passwd --database=$4 $cmd
	fi
  
fi 


#echo "$@"


