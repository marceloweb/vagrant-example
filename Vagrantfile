# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = "512"
  end

  config.vm.define :web do |web_config|
     web_config.vm.hostname = "web"
     web_config.vm.network :private_network, :ip => "172.17.0.2"
     web_config.vm.provision "file", source: "./sites-available/default", 
       destination: "/tmp/default",
       run: "always"
     web_config.vm.provision "shell", path: "./provisioner.sh",
       run: "always"
  end

end
