#!/bin/sh
ansible-playbook --private-key=~/.vagrant.d/insecure_private_key -u vagrant -i ../hosts/hosts.local $@
