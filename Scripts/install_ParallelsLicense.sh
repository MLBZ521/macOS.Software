#!/bin/bash

###################################################################################################
# Script Name:  install_ParallelsLicense.sh
# By:  Zack Thompson / Created:  8/17/2017
# Version:  1.0 / Updated:  8/17/2017 / By:  ZT
#
# Description:  This script will allow the installation of the Parallels License.
#
###################################################################################################

/bin/echo "Installing the Parallels License..."

prlsrvctl install-license -k $4

/bin/echo "License installed!"

exit 0