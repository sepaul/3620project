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

c240g1  
10 nodes (Haswell, 16 core, 14 disks)
CPU  
Two Intel E5-2630 v3 8-core CPUs at 2.40 GHz (Haswell w/ EM64T)
RAM
128GB ECC Memory (8x 16 GB DDR4 1866 MHz dual rank RDIMMs)
Disk 
Two Intel DC S3500 480 GB 6G SATA SSDs
Disk
Twelve 3 TB 3.5" HDDs donated by Seagate
NIC
Dual-port Intel X520-DA2 10Gb NIC (PCIe v3.0, 8 lanes)
NIC 
Onboard Intel i350 1Gb

c6320
84 nodes (Haswell, 28 core)
CPU
Two Intel E5-2683 v3 14-core CPUs at 2.00 GHz (Haswell)
RAM
256GB ECC Memory
Disk   
Two 1 TB 7.2K RPM 3G SATA HDDs
NIC
Dual-port Intel 10Gbe NIC (X520)
NIC 
Qlogic QLE 7340 40 Gb/s Infiniband HCA (PCIe v3.0, 8 lanes)


c4130  
2 nodes (Haswell, 28 core, two GPUs)
CPU   
Two Intel E5-2680 v3 12-core processors at 2.50 GHz (Haswell)
RAM   
256GB ECC Memory
Disk 
Two 1 TB 7.2K RPM 3G SATA HDDs
GPU  
Two Tesla K40m GPUs
NIC 
Dual-port Intel 1Gbe NIC (i350)
NIC 
Dual-port Intel 10Gbe NIC (X710)
NIC 
Qlogic QLE 7340 40 Gb/s Infiniband HCA (PCIe v3.0, 8 lanes)

> A section explaining why the network topology and computing structure of the CloudLab profile can be considered similar to the architecture of the selected XSEDE/Clemson resource. Citations describing the original architecture must be provided to justify these explanations.



# Software Infastructure Deployment 
> A section describing in details how the script(s) work to support the deployment of software infrastructures. If you customize existing work (i.e., the OpenStack default profile for CloudLab), makes sure that the original work is properly cited and that you describe what changes have been made. 


# Results and Validation
>A section describing validation results. 


