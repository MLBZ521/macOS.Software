#!/bin/bash

###################################################################################################
# Script Name:  install_ParallelsLicense.sh
# By:  Zack Thompson / Created:  8/17/2017
# Version:  1.1 / Updated:  12/14/2017 / By:  ZT
#
# Description:  This script will apply a Parallels License provided as a JSS Script Parameter.
#
###################################################################################################

/bin/echo "*****  install_ParallelsLicense Process:  START  *****"

# Define Variables
Parallels="/usr/local/bin/prlsrvctl"

if [[ ! -x $Parallels ]]; then
    /bin/echo "Error:  Parallels is not properly installed."
	/bin/echo "*****  install_ParallelsLicense Process:  FAILED  *****"
    exit 1
else
	/bin/echo "Applying the Parallels license..."
	$Parallels install-license -k $4
	exitCode=$?

	if [[ $exitCode = 0 ]]; then
		/bin/echo "Parallels has been licensed!"
		/bin/echo "*****  install_ParallelsLicense Process:  COMPLETE  *****"
	else
		/bin/echo "Error:  License was likely invalid."
		/bin/echo "*****  install_ParallelsLicense Process:  FAILED  *****"
		exit 2
fi

exit 0