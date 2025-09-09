# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.define "web" do |subconfig|
    subconfig.vm.box = "ubuntu/jammy64"
    config.vm.provision "shell", path: "provisionWeb.sh"
    config.vm.hostname = "web.m340"
    config.vm.provider "virtualbox" do |vb|
    	vb.name = "web.340"
    	vb.cpus = 2
    	vb.memory = 2048
    end
    #Network
    config.vm.network "private_network", ip: "10.10.20.10", virtualbox__intnet: "LAMP", name: "vboxnet1"
    config.vm.network "private_network", ip: "192.168.56.10", name: "vboxnet2"
    config.vm.network "public_network", name: "vboxnet3"
  end

  config.vm.define "db" do |subconfig|
    subconfig.vm.box = "ubuntu/jammy64"
    config.vm.provision "shell", path: "provisionDB.sh"
    config.vm.hostname = "db.m340"
    config.vm.provider "virtualbox" do |vb|
	    vb.name = "db.m340"
	    vb.cpus = 2
	    vb.memory = 2048
    end
  end
  #Network
  config.vm.network "private_network", ip: "10.10.20.11", virtualbox__intnet: "LAMP", name: "vboxnet1"
  config.vm.network "public_network", name: "vboxnet3"
end