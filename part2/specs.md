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
The structure of the CloudLab model of Palmetto Cluster was chosen because we had not reviewed networking yet. We chose a LAN that is connected via Ethernet. The Ethernet connection was decided upon because Palmetto Cluster utilizes Myrinet, 10Gbps Ethernet, and Infiniband network interconnects. To simplify our model, we chose Ethernet. 

The nodes were selected to represent a feature we thought was important related to the Palmetto Cluster. First, we chose nodes from Wisconsin and Clemson sites because our group identified the Wisconsin CloudLab structure to be the most similar to Palmetto. This is because of the large memory nodes and various hardwares associated with Wisconsin's architecture. 
> A section explaining why the network topology and computing structure of the CloudLab profile can be considered similar to the architecture of the selected XSEDE/Clemson resource. Citations describing the original architecture must be provided to justify these explanations.



# Software Infastructure Deployment 
> A section describing in details how the script(s) work to support the deployment of software infrastructures. If you customize existing work (i.e., the OpenStack default profile for CloudLab), makes sure that the original work is properly cited and that you describe what changes have been made. 


# Results and Validation
>A section describing validation results. 


