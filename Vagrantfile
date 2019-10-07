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
     web_config.vm.provision "file", source: "./sites-available/default", 
       destination: "/tmp/default",
       run: "always"
     web_config.vm.provision "shell", path: "./provisioner.sh",
       run: "always"
  end

  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = '~/.ssh/id_rsa'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/devopsgroup-io/vagrant-digitalocean/raw/master/box/digital_ocean.box"
    override.nfs.functional = false
    provider.token = '111f8e3794bf8116de2a666b911c8f46df8f7f5a7d84d6154aba3c9e79b15e02'
    provider.image = 'ubuntu-16-04-x64'
    provider.region = 'nyc3'
    provider.size = '512mb'
  end

end
