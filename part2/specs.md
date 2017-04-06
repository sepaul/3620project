# Network Topology 
This network topology represents the Clemson University Palmetto Cluster. Our group strategically picked the number of nodes and associated hardwares to emulate the cluster. 

![Image of Topology](https://github.com/sepaul/3620project/blob/master/part2/topology.png)


| Node  | Hardware  | Site  |
|---|---|---|
| usernode  | c220g1  | Wisconsin  |
| parallel  | c220g1  | Wisconsin  |
| compute1  | c6320  | Clemson |
| compute2  | c4130  | Clemson  |
| compute3  | c6320  | Clemson  |
| largemem1  | c220g1  | Wisconsin  |
| largemem2  | c220g1  | Wisconsin  |


# Palmetto Cluster Comparison 

### Palmetto Architecture 
Palmetto Cluster contains 2021 compute nodes and 22528 CPU cores. The nodes contain varying CPU types, memory, network, and disk space. There are 6 large memory nodes that combines to over 38TB of memory. Each user is alloted 100GB of personal storage and the scratch file systems provide space for temporary files. /scratch1 is a parallel file system which performs better for jobs that run multiple processes, across multiple nodes, or read/write the same file using parallel I/O routines. /scratch2 and /scratch3 are general purpose file systems. 

> Infrastructure Description: https://citi.sites.clemson.edu/infrastructure  

> User Guide: https://www.palmetto.clemson.edu/palmetto/pages/userguide.html#overview 
   
### CloudLab Model of Palmetto Cluster 
As a preface to this section, our team would like to note that specific node hardwares were limited due to heavy use on CloudLab throughout the last few weeks. We chose nodes based on what was available and what was the most compatible of the available node hardware options.

The structure of the CloudLab model of Palmetto Cluster was chosen because we had not reviewed networking yet. We chose a LAN that is connected via Ethernet. The Ethernet connection was decided upon because Palmetto Cluster utilizes Myrinet, 10Gbps Ethernet, and Infiniband network interconnects. To simplify our model, we chose Ethernet. 

The nodes were selected to represent a feature we thought was important related to the Palmetto Cluster. First, we chose nodes from Wisconsin and Clemson sites because our group identified the Wisconsin CloudLab structure to be the most similar to Palmetto. This is because of the large memory nodes and various hardwares associated with Wisconsin's architecture.

For our user node, parallel file system node, and large memory nodes we selected the Wisconsin CloudLab c220g1 node setup. Palmetto Cluster contains 6 large memory nodes that sum to over 38TB of memory and we represented this by each large memory node being a c220g1 which contains two 1.2TB 10K RPM 6G SAS SFF HDDs and one Intel DC S3500 480 GB 6G SATA SSDs each. Similarly, Palmetto contains large scratch spaces, specifically scratch1 which is the parallel file system, so we used the c220g1 configuration for this purpose as well. The large storage seemed consistent with the Palmetto Cluster set up and would be beneficial for simulating a need for large data storage.  The decision for the usernode was primarily made because of the availability of the c220g1 nodes. We recognized that Palmetto uses the user node as an entry point and we felt the node did not need a specific configuration, thus the availability/capability of the c220g1 node was used. 

Finally, the compute nodes were selected based on variability and availability. Palmetto contains various computational nodes with varying CPU types, memory, network, and disk space. In the table below, we can see the comparisons of the c4130 and c6320 nodes. We felt the varying CPU and GPU specifications made these nodes appropriate in our Palmetto Cluster model. 

| Node  | CPU  | Disk | GPU |
|---|---|---|---|
| c4130  | Two Intel E5-2683 v3 14-core CPUs at 2.00 GHz (Haswell)  | Two 1 TB 7.2K RPM 3G SATA HDDs  |Two Tesla K40m GPUs |
| c6320  | Two Intel E5-2680 v3 12-core processors at 2.50 GHz (Haswell)  | Two 1 TB 7.2K RPM 3G SATA HDDs | N/A |

# Software Infastructure Deployment 

The script that we created is used to set up the software configurations of nodes for parallel processing on the Cloudlab Palmetto Cluster model. For this script to work, you must first be sure to put the node IP's into a file named ip.txt and make sure that it is in the same directory as the script so that it can be read. The script begins by clearing the screen and then getting the username from the command line arguments. If a username cannot be found, then an error will be shown. But, if a username is found, then the script will take that username and ssh into the host. Once this is complete it will run a sudo apt-get -y install on the necessary programs. It will install mpich2, gfortran, g++, and python-mpi4y. It will also check to see if these are already installed and update them if needed. Finally, a message of a successful installation will be presented and the script will be complete. 

```
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
  echo "" |  ssh -t -p 22 $USERNAME@$HOST      "sudo apt-get update                &&
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
``` 
# Results and Validation
>A section describing validation results. 


