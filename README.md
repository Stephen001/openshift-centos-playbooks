# openshift-centos-playbooks
Some nice-to-have playbooks for CentOS7 and OpenShift together

### To test with Vagrant
1. Install Vagrant and VirtualBox
2. Run vagrant up to create the VM and run provisioning.

The provisioning runs `playbooks/setup.yml`, which in turn runs
`playbooks/prep-server.yml` and then `playbooks/docker.yml`. This is
primarily to test all of the playbooks together in an easy fashion.

Normally, you would run `playbooks/prep-server.yml` on the CentOS machines
you wanted to install as part of an OpenShift stack, then you'd install OpenShift
via the https://github.com/openshift/openshift-ansible repository, and end with
replacing Docker with Docker CE by running `playbooks/docker.yml`.
