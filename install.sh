#!/bin/bash
######
#
# Install Samples, Binaries and Docker Images for Hyperledger Fabric
#
###

password=""
if [ -n "$1" ]
then
  password=$1
  shift
  echo "password: $password"
else
  echo "You should define sudo password!"     
	echo "Usage: cmd <sudo-password>"
  exit 1
fi


##echo 
echo
echo "### Install Samples, Binaries and Docker Images for Hyperledger Fabric ###"
echo "##########################################################################" 
echo
echo
saved_pwd=$(pwd)
workingdir=$HOME/hyperledger-fabric
echo "Working directory: $workingdir"
echo
echo "Creating working directory"
echo
mkdir $workingdir 
echo
echo "Changing directory"
echo
cd $workingdir
echo "Workign PWD: $(pwd)" 
echo
echo
echo "Downloads and executes a bash script that will download"
echo "and extract all of the platform-specific binaries you"
echo "will need to set up your network and place them into"
echo "the cloned repo you created above."
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.3.0
echo
echo "Add that to your PATH environment variable so that these can be"
echo "picked up without fully qualifying the path to each binary"
export PATH=$workingdir/bin:$PATH
echo
echo "The script lists out the Docker images installed upon conclusion."
echo
cd $saved_pwd
echo "$(pwd)"

exit 0
