This is an example of Petclinic application made using Docker.
It makes three containers in the inner network.
Only proxy nginx container is visible. The page  has
self-signed certificate.
It was examined under Ubuntu 18.04 LTS and later.
git, docker and docker-compose should be installed.

The command sequence is simple:

git clone https://github.com/v-ch322/petclinic 

cd petclinic

./pet.sh

pet.sh should be executable (chmod +x pet.sh, if necessary).

You can then access Petclinic here: https://localhost.

The solution for Ansible is placed in 'Ansible_Petclinic/' directory.
AWS t2.micro should be used.
File 'myhost' should be edited: path to ssh key, IP address of the target host.

Execution with the command:
ansible-playbook -i myhost Java-Petclinic.yml
Result is seen in the instance, port 8080.
