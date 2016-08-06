#!/bin/bash

if [ $GENERATE_HOST_KEYS == 'YES' ]; then
  ssh-keygen -A
fi

sshd
