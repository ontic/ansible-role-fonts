#!/bin/bash

# Verify the installed fonts.
docker exec --tty ${container_id} env TERM=xterm fc-list | grep true | sed -e "s|^.*/||" -e "s/:style=\(\<.*\>\).*$/ - \1/" -e "s/,.*$//" | sort