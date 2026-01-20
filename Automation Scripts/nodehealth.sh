#!/bin/bash


####################
#Author: Sunil Kumar C
#Date: 21/12/2025
#Description: This script outputs the node health
#Version: v1
###################

#Debugger
set -x
#Exit on Error
set -e
#Pipe Safety
set -o pipefail 

#Disk Usage
df -h
#Memory Usage
free -g
#CPU Count
nproc

#Extract the Process IDs (PIDs) of any running programs related to "amazon"
ps -ef | grep amazon | awk -F" " '{print $2}'

