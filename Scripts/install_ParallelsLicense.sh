#!/bin/bash

###################################################################################################
# Script Name:  install_ParallelsLicense.sh
# By:  Zack Thompson / Created:  8/17/2017
# Version:  1.0 / Updated:  12/14/2017 / By:  ZT
#
# Description:  This script will apply a Parallels License provided as a JSS Script Parameter.
#
###################################################################################################

/bin/echo "******************************************************"
/bin/echo "*****  install_ParallelsLicense Process:  START  *****"
/bin/echo "******************************************************"

/bin/echo "Applying the Parallels license..."

/usr/local/bin/prlsrvctl install-license -k $4

/bin/echo "Parallels has been licensed!"

/bin/echo "*****************************************************"
/bin/echo "*****  install_ParallelsLicense Process:  STOP  *****"
/bin/echo "*****************************************************"

exit 0