#!/bin/bash
#   CloudPassage Halo Agent
#   Unattended installation script on CentOS, Fedora, Oracle Linux, Redhat, and Amazon Linux.
#   -------------------------------------------------------------------------------------------
#   This script is intended to be used for an unattended installation
#   of the CloudPassage Halo Agent.
#
#   IMPORTANT NOTES
#
#     * This script may require adjustment to conform to your server
#       configuration. Please review this script and test it on a server
#       before using it to install the Halo Agent on multiple servers.
#
#     * This script contains the CloudPassage Halo Agent Registration Key
#       Keep this script safe - handle it as
#       you would the password to your CloudPassage portal account!
#

# add CloudPassage repository
echo -e '[cloudpassage]
name=CloudPassage
baseurl=https://production.packages.cloudpassage.com/redhat/$basearch
gpgcheck=1'  | tee /etc/yum.repos.d/cloudpassage.repo > /dev/null

# import CloudPassage public key
rpm --import https://production.packages.cloudpassage.com/cloudpassage.packages.key

# update yum repositories
yum check-update > /dev/null

# install the agent
yum -y install cphalo initscripts
