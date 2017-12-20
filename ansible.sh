#!/bin/sh

cd ${0%/*};

sudo pip install ansible

ansible-playbook ./ci3.yml  --connection=local
