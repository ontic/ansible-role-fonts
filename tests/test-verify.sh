#!/bin/bash
# Copyright (c) Ontic. (http://www.ontic.com.au). All rights reserved.
# See the COPYING file bundled with this package for license details.

# Verify the installed fonts.
docker exec --tty ${container_id} env TERM=xterm fc-list | grep true | sed -e "s|^.*/||" -e "s/:style=\(\<.*\>\).*$/ - \1/" -e "s/,.*$//" | sort