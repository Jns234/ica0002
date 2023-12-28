#!/bin/bash -ex

date > pre_exam.txt

exec > >(tee -ia pre_exam.txt) 2>&1

hostname

/Users/user/ansible-venv/bin/ansible-playbook infra.yaml --diff

/Users/user/ansible-venv/bin/ansible-playbook infra.yaml --diff

/Users/user/ansible-venv/bin/ansible all -b -m reboot -a "test_command=uptime"

/Users/user/ansible-venv/bin/ansible-playbook infra.yaml --diff

date