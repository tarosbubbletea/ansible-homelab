#!/bin/sh

#must run the first line after installing distro to set up ansible support on the host
#my suggestion? modify a debian image to configure unattended install and have the ansible user be created automatically
#otherwise, you will have to enable login as root on the ssh config file and run the first playbook 

# ansible-playbook -k --vault-password-file=ansible_pwd -v setup_ansible_user.yml
ansible-playbook --vault-password-file=ansible_pwd -v site.yml $@
#ansible-playbook --vault-password-file=ansible_pwd -t checkup site.yml