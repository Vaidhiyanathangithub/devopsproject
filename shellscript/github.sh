


#!/bin/bash

playbook_name=$1

# Use the playbook name in this script
echo "Running script 1 with playbook: $playbook_name"



#going to repo path
cd /home/vaidhi/Documents/Playbooks

#add the file
git add $playbook_name

#commit the change
git commit -m "add playbook"

#check the push and pull origin path
git remote -v 

#push origin to master branch
git push origin master


