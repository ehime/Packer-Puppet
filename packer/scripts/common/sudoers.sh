#!/bin/bash -eux

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' \
       -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers
