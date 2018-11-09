#!/bin/bash
######
#
# Install Samples, Binaries and Docker Images for Hyperledger Fabric
#
###

workingdir=$HOME/hyperlader
mkdir $workingdir 
cd $workingdir

Downloads and executes a bash script that will download 
and extract all of the platform-specific binaries you 
will need to set up your network and place them into 
the cloned repo you created above.

curl -sSL http://bit.ly/2ysbOFE | bash -s 1.3.0

Add that to your PATH environment variable so that these can be 
picked up without fully qualifying the path to each binary

export PATH=<path to download location>/bin:$PATH

The script lists out the Docker images installed upon conclusion.

exit 0
