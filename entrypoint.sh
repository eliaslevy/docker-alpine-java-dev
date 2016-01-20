#!/bin/bash

mkdir /root/.ssh
echo ${AUTH_KEYS} > /root/.ssh/authorized_keys
exec "$@"

