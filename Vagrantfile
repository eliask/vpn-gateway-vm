# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-cloud-32"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.network :private_network, ip: "192.168.3.103"
  config.vm.network :public_network

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provisioning/main.yml"
    ansible.inventory_file = "provisioning/hosts"
    ansible.verbose = true
  end

end
