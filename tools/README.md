
cat id_rsa.pub

docker build -t centos_sshd  -f Dockerfile_c7 .
docker build -t ubuntu_sshd  -f Dockerfile_u16 .

./spawn_env.sh
