#!/bin/sh
#
# Restart infinitely a binary if it exits and enable the TERM signal to stop it
#

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <binary_name> <binary_command_line>"
    exit 1
fi

# First argument : binary name
bin_name=$1
# Second argument : binary command line
bin_command_line=$2

echo "Starting $bin_name with command line: $bin_command_line"

# Trap the TERM signal to stop the child binary
trap 'logger "Stop $bin_name service"; pkill -P $$; exit 0' TERM

# Start and restart the binary infinitely
while true
do :
    $bin_command_line &
    wait $!
    logger "$bin_name exited with code $?, restart it..."
    sleep 5
done
