#!/bin/sh
ansible-playbook -k --vault-password-file=ansible_pwd site.yml #run without -k past first run
#ansible-playbook --vault-password-file=ansible_pwd -t checkup site.yml