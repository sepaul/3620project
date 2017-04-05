#!/bin/sh


# Script to set up nodes for parallel processing on CloudLab Cluster
# NOTE: Put node IP's in a file named ips.txt in same directory as script
# run script with ./part2build <username>

clear

# get username from argv[1]
if [ -z "$1" ]
then
    echo "ERR! USE ./part2build.sh <username>"
    exit
else
    USERNAME=$1
fi



# install required programs for parallel processing
while read HOST; do
  echo "" |  ssh -t -p 22 $USERNAME@$HOST      "sudo apt-get update         &&
                                 	        sudo apt-get install mpich2 &&
                                 		sudo apt install gfortran   &&
                                 		sudo apt install g++        &&
                                 		sudo apt install python-mpi4py >> RESULTS
                                 	       ";
  echo "======================================="
  echo "======================================="
  echo " $HOST install complete                "
  echo "======================================="
  echo "======================================="
  echo "======================================="
  echo "======================================="
done < ips.txt

