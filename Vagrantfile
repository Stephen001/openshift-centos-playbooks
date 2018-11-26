Vagrant.require_version ">= 2.0.0"

Vagrant.configure(2) do |config|
  config.ssh.insert_key = false

  config.vm.define "node1" do |node1|
    node1.vm.box = "centos/7"
    node1.vm.hostname = "node1"
  end

   config.vm.provision "setup", type:"ansible" do |ansible|
     ansible.verbose = "v"
     ansible.playbook = "playbooks/setup.yml"
   end
end
