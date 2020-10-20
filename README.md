# Docker ZooKeeper
Required files to run multiple zookeeper container on a local machine 

## Build you own image
You need to build your own image for the containers.
I suggest you can use the official one and modify some parts to adapt your needs.
The official images can be found at https://hub.docker.com/_/zookeeper

## Details of the files and folders
###Dockerfile
The file to build the image. Basically, no need to change it unless you want to add some environment variables.
### docker-compose.yaml
The docker-compose file to fire a two-node ZooKeeper cluster.
Please replace __YOUR_ZK_IMAGE__ with the one you built with the docker file.

If you want to add a new configuration to the zoo.config, add an environment variable to the file under ZOO_MY_ID.
for exmaple, if you want to add an oracle(ZooKeeper-3922, ZooKeepr PR 1444) to the cluster, you should have something like the following:

    environment:
    ZOO_MY_ID: 1
    ORACLE_PATH: /chassis/mastership
    ZOO_SERVERS: server.1=0.0.0.0:2888:3888;2181 server.2=re1:2888:3888;2181
      
__mastership__ is a text file contains only either 0 or 1. You could easily create it by 

  touch mastership
  echo 0 > mastership
  

If you are using the oracle, you need to also provide the oracle files, so you should get something like this:

    volumes:       
    - /some/path/docker/re0:/chassis/

Please replace __YOUR_ZOOKEEPER_REPO__ with the one on your host machine.
For example, if you have a ZooKeeper binaries on /some/path/
You shall have /some/path/apchache-zookeeper-someversion/...

Then, you should have the followig in your file:

    volumes:       
    - /some/path/apache-zookeeper-someversion/:/apache-zookeeper-3.6.1-bin/
    

### hw0-hw2
These are the folders for storing the oracle files(ZooKeeper-3922, ZooKeepr PR 1444). If the oracle is configured in the zoo.cfg, dedicated oracle files are required.
For example, if two nodes are configured with the Oracle, two oracle files should be provided. The values in those oracle files should be mutaul exclusive. Details can refer to the document.

### BASH files
Those files are used to stilumate crash failures and the behaviors of the oracle.

