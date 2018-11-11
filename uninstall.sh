
#!/bin/bash
######
#
# Uninstall Samples, Binaries and Docker Images for Hyperledger Fabric
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

echo 
echo
echo "### Uninstall Samples, Binaries and Docker Images for Hyperledger Fabric ###"
echo "############################################################################" 
echo
echo
workingdir=$HOME/hyperledger-fabric
echo
echo "Working directory: $workingdir"
echo
echo "Removing working directory and all it content"
rm -rf $workingdir 
echo 
echo "Done!"
echo "Hyperladger Fabric has been removed successfull!"
echo
echo

exit 0
