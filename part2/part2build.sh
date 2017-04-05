#!/bin/sh


# Script to set up nodes for parallel processing on CloudLab Cluster
# NOTE: Put node IP's in a file named ips.txt in same directory as script
# run script with ./part2build <username>

# Clear the Screen
clear

# Get username from argv[1]
if [ -z "$1" ]
then
    echo "ERR! USE ./part2build.sh <username>"
    exit
else
    USERNAME=$1
fi

# install required programs for parallel processing
while read HOST; do
  echo "" |  ssh -t -p 22 $USERNAME@$HOST      "sudo apt-get update                 &&
                                 	            sudo apt-get -y install mpich2      &&
                                 		        sudo apt-get -y install gfortran    &&
                                 		        sudo apt-get -y install g++         &&
                                 		        sudo apt-get -y install python-mpi4py >> INSTALL_RESULTS
                                 	           ";
  echo "======================================="
  echo "======================================="
  echo " $HOST install complete                "
  echo "======================================="
  echo "======================================="
  echo "======================================="
  echo "======================================="
done < ips.txt
