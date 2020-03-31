# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.synced_folder ".", "/var/www"
  config.vm.provision :shell, path: "config/provision/entry.sh"
  config.vm.network "private_network", ip: "192.168.99.1"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end
  
end
