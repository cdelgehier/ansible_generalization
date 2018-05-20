#!/bin/bash

for i in $(seq 1 6); do
docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=$HOME/.ssh:/root/.ssh --name node${i} --hostname node${i} centos_sshd /usr/lib/systemd/systemd > "/tmp/172.17.0.$((i+1))"
done
#sleep 1
#docker run --detach --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE --volume=$HOME/.ssh:/root/.ssh ubuntu_sshd /sbin/init > "/tmp/172.17.0.5"
#docker run --detach --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE --volume=$HOME/.ssh:/root/.ssh ubuntu_sshd /sbin/init > "/tmp/172.17.0.6"
#docker run --detach --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE --volume=$HOME/.ssh:/root/.ssh ubuntu_sshd /sbin/init > "/tmp/172.17.0.7"

