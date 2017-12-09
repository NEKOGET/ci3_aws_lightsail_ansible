#!/bin/sh

cd ${0%/*};

sudo pip install ansible

ansible-playbook ./ci3_aws_c9_ansible.yml  --connection=local