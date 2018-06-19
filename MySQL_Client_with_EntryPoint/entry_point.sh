#!/bin/bash

if [ $# = "0" ]
then
   echo "" 
   echo "Please input parameter.."
   echo ::
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
   export filesql=$6 
fi 

echo "Host="$host
echo "user="$user
echo "passwd="$passwd
echo "database="$database
echo "command="$cmd
echo "filesql="$filesql

if [ $host = "sh" ]
then
   sh
   exit
else
	#echo " 1 "$1" 2 "$2" 3 "$3" 4 "$4" 5 "$5" 6 "$6
        if [ $cmd = "dump" ]
	then
		mysqldump -Y -h $host -u $user -p$passwd $database > /sql/$filesql
		chmod 777 /sql/$filesql
		exit 0;
	fi

	if [ $cmd = "file" ]
	then	
	
		mysql --host $host --user=$user --password=$passwd --database=$database < $filesql 
	else
		mysql --host $host --user=$user --password=$passwd --database=$database --execute="$cmd"
	fi
  
fi 


#echo "$@"


