#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current Working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "HostName: $HOSTNAME"
echo "Process ID of current shell-script: $$"
sleep 30 &
echo " Process ID of last background Command: $!"