

#!/bin/bash
set -x

#Change to the jenkings as user
sudo chown -R jenkins:jenkins /home/vaidhi/

# Change to the directory containing your playbook
#cd /var/lib/awx/projects/Project/

# Change ownership of the directory to Jenkins user
sudo chown -R jenkins:jenkins /var/lib/awx


# Copy the playbook to the project directory
cp /home/vaidhi/Documents/Playbooks/devops2.yml /var/lib/awx/projects/Project/


# Change ownership of the playbook to the Jenkins user
#sudo chown jenkins:jenkins devops2.yml


# Change ownership of the directory to Jenkins user
sudo chown -R awx:awx /var/lib/awx/


# Set Tower CLI configurations
tower-cli config host https://192.168.122.1/
tower-cli config username admin
tower-cli config password Jothi@0212
tower-cli config verify_ssl false

# Assign playbook to job template
tower-cli job_template modify 9 --playbook "devops2.yml"

# Launch the job
tower-cli job launch --job-template=9 --inventory=4


#Change back to the root as user
sudo chown -R root:root /home/vaidhi/
