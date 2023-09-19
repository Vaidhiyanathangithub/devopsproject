#!/bin/bash

# Get the playbook name as an argument
playbook_name=$1

# Call the first shell script with the playbook name
./github.sh "$playbook_name"
#./script2.sh "$playbook_name"

