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
  exit 1
fi

git clone https://github.com/mdarin/hyle-sev-ub.git
./hyle-sev-ub $password
#echo "$(ls hyle-sev-ub)"

saved_pwd=$(pwd)
workingdir=$HOME/hyperlader
echo
echo "Working directory: $workingdir"
echo
echo "Creating working directory"
mkdir $workingdir 
echo
echo "Changing directory"
echo 
cd $workingdir
echo "$(pwd)" 
echo
echo
echo "Downloads and executes a bash script that will download"
echo "and extract all of the platform-specific binaries you"
echo "will need to set up your network and place them into"
echo "the cloned repo you created above."

echo "curl -sSL http://bit.ly/2ysbOFE | bash -s 1.3.0"

echo "Add that to your PATH environment variable so that these can be"
echo "picked up without fully qualifying the path to each binary"

echo "export PATH=<path to download location>/bin:\$PATH"

echo "The script lists out the Docker images installed upon conclusion."

cd $saved_pwd
echo "$(pwd)"

exit 0
