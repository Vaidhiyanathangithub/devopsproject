#!/bin/bash
set -x

cd /var/lib/
chown -R jenkins:jenkins awx/
cp /home/vaidhi/Documents/Playbooks/devops2.yml /var/lib/awx/projects/Project/
chown -R awx:awx awx
tower-cli config host https://192.168.122.1/
tower-cli config username admin
tower-cli config password Jothi@0212
tower-cli config verify_ssl false
tower-cli job_template modify 9 --playbook "devops2.yml"
tower-cli job launch --job-template=9 --inventory=4

