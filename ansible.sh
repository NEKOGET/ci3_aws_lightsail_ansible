#!/bin/sh

cd `dirname $0`

if [ ! -f '/usr/local/bin/ansible' ]; then
  sudo pip install ansible
fi

echo "install python-devel"
sudo yum -y install python-devel

echo "ansible start"
ansible-playbook -i ./hosts ./ci3.yml  --connection=local 
