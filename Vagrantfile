# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.define "web" do |subconfig|
    subconfig.vm.box = "ubuntu/jammy64"
    subconfig.vm.provision "shell", path: "provisionWeb.sh"
    subconfig.vm.hostname = "web.m340"
    subconfig.vm.synced_folder "shareVmWeb", "/var/www/html"
    subconfig.vm.provider "virtualbox" do |vb|
    	vb.name = "web.340"
    	vb.cpus = 2
    	vb.memory = 2048
    end
    #Network
    subconfig.vm.network "private_network", ip: "10.10.20.10", virtualbox__intnet: "LAMP", name: "vboxnet1"
    subconfig.vm.network "private_network", ip: "192.168.56.10"
  end

  config.vm.define "db" do |subconfig|
    subconfig.vm.box = "ubuntu/jammy64"
    subconfig.vm.provision "shell", path: "provisionDB.sh"
    subconfig.vm.hostname = "db.m340"
    subconfig.vm.provider "virtualbox" do |vb|
	    vb.name = "db.m340"
	    vb.cpus = 2
	    vb.memory = 2048
    end
    #Network
    subconfig.vm.network "private_network", ip: "10.10.20.11", virtualbox__intnet: "LAMP", name: "vboxnet1"
  end
end