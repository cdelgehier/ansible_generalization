#!/bin/bash


docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=$HOME/.ssh:/root/.ssh centos_sshd /usr/lib/systemd/systemd > "/tmp/172.17.0.2"
docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=$HOME/.ssh:/root/.ssh centos_sshd /usr/lib/systemd/systemd > "/tmp/172.17.0.3"
docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=$HOME/.ssh:/root/.ssh centos_sshd /usr/lib/systemd/systemd > "/tmp/172.17.0.4"
sleep 1
docker run --detach --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE --volume=$HOME/.ssh:/root/.ssh ubuntu_sshd /sbin/init > "/tmp/172.17.0.5"
docker run --detach --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE --volume=$HOME/.ssh:/root/.ssh ubuntu_sshd /sbin/init > "/tmp/172.17.0.6"
docker run --detach --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE --volume=$HOME/.ssh:/root/.ssh ubuntu_sshd /sbin/init > "/tmp/172.17.0.7"

