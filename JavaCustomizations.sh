#!/bin/bash

###################################################################################################
# Script Name:  JavaCustomizations.sh
# By:  Zack Thompson / Created:  8/11/2015
# Version:  1.0 / Updated:  8/11/2015 / By:  ZT
#
# Description:  This script copies down the Java Customizations used by the Organization.
#
###################################################################################################

# Import Kronos Cert into the Java cacerts keystore
sudo keytool -importcert -alias Kronos -file /Library/IT_Staging/Kronos_Expires2-5-16.cer -keystore cacerts -storepass changeit

# Copy over the Java Deployment Rule Set and Deployment Configuration files
sudo mkdir /Library/Application\ Support/Oracle/Java/Deployment/
sudo cp /Library/IT_Staging/DeploymentRuleSet.jar /Library/Application\ Support/Oracle/Java/Deployment/DeploymentRuleSet.jar
sudo cp /Library/IT_Staging/deployment.config /Library/Application\ Support/Oracle/Java/Deployment/deployment.config
sudo cp /Library/IT_Staging/deployment.properties /Library/Application\ Support/Oracle/Java/Deployment/deployment.properties
sudo cp /Library/IT_Staging/exception.sites /Library/Application\ Support/Oracle/Java/Deployment/exception.sites

# Set the permissions on the files so Java can read them.
sudo chmod 040 /Library/Application\ Support/Oracle/Java/Deployment/DeploymentRuleSet.jar
sudo chmod 040 /Library/Application\ Support/Oracle/Java/Deployment/deployment.config
sudo chmod 040 /Library/Application\ Support/Oracle/Java/Deployment/deployment.properties
sudo chmod 040 /Library/Application\ Support/Oracle/Java/Deployment/exception.sites

# Delete these files after copy.
sudo rm /Library/IT_Staging/Kronos_Expires2-5-16.cer
sudo rm /Library/IT_Staging/DeploymentRuleSet.jar
sudo rm /Library/IT_Staging/deployment.config
sudo rm /Library/IT_Staging/deployment.properties
sudo rm /Library/IT_Staging/exception.sites

# Disable Java Updater
sudo defaults write /Library/Preferences/com.oracle.java.Java-Updater JavaAutoUpdateEnabled -bool false

exit 0