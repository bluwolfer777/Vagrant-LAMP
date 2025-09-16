# -*- mode: ruby -*-
# vi: set ft=ruby :
BASE_INT_NETWORK = "10.10.20."
BASE_HOST_ONLY_NETWORK = "192.168.56."
INTNET_NAME = "LAMP"
BOX_IMAGE = "ubuntu/jammy64"

Vagrant.configure("2") do |config|
  
  config.vm.define "web" do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    subconfig.vm.provision "shell", path: "provisionWeb.sh"
    subconfig.vm.hostname = "web.m340"
    subconfig.vm.synced_folder "shareVmWeb", "/var/www/html"
    subconfig.vm.provider "virtualbox" do |vb|
    	vb.name = "web.340"
    	vb.cpus = 2
    	vb.memory = 2048
    end
    #Network
    subconfig.vm.network "private_network", ip: BASE_INT_NETWORK + "10", virtualbox__intnet: INTNET_NAME, name: "vboxnet1"
    subconfig.vm.network "private_network", ip: BASE_HOST_ONLY_NETWORK + "10"
  end

  config.vm.define "db" do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    subconfig.vm.provision "shell", path: "provisionDB.sh"
    subconfig.vm.hostname = "db.m340"
    subconfig.vm.provider "virtualbox" do |vb|
	    vb.name = "db.m340"
	    vb.cpus = 2
	    vb.memory = 2048
    end
    #Network
    subconfig.vm.network "private_network", ip: BASE_INT_NETWORK + "11", virtualbox__intnet: INTNET_NAME, name: "vboxnet1"
  end
end