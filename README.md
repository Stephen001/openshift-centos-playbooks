# openshift-centos-playbooks
Some nice-to-have playbooks for CentOS7 and OpenShift together, especially when installing 
via [openshift/openshift-ansible](https://github.com/openshift/openshift-ansible). 
Includes a testbed using Vagrant for faster iteration on playbook changes.

There are 3 playbooks of note:

- `playbooks/prep-server.yml` updates yum, and installs NetworkManager, git, vim, pip. It then starts NetworkManager as 
a service, and ensures that `SELINUX=enforcing` in `/etc/selinux/config`, complying with software needed prior to installing 
OpenShift.
- `playbooks/docker.yml` will replace the default CentOS 7 Docker with Docker-CE, and use `overlay2` as a storage-driver for it.
- `playbooks/lock-down-sshd.yml` will adjust the SSH setup to comply better with [securing CentOS SSH](https://wiki.centos.org/HowTos/Network/SecuringSSH)

### To test with Vagrant
1. Install Vagrant and VirtualBox
2. In the vagrant-playground folder:

- Copy `hosts/hosts.example` to a new file in the `hosts` folder and adjust it as needed
- Copy `ansible.cfg.example` to `ansible.cfg` and adjust it as needed, e.g., to point to your new hosts file.
- Run `vagrant up` to create the VM. It will automatically be provisioned with `playbooks/prep-server.yml`
- If you want to replace Docker with Docker CE, run `./local-play.sh ../playbooks/docker.yml`
- If you want to secure SSH a bit better, run `./local-play.sh ../playbooks/lock-down-sshd.yml`
