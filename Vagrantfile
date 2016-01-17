# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/wily64"
  # The url from where the 'config.vm.box' box will be fetched if it doesn't exist
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/wily/current/wily-server-cloudimg-amd64-vagrant-disk1.box"
  #config.vm.hostname = 'MakersMap-RoR-DevBox'
  config.vm.provision :shell, inline: "hostnamectl set-hostname MakerMap-RoR-DevBox" #Workaround to set hostname
  config.ssh.shell = 'bash'
  #config.vbguest.auto_update = true

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  #config.vm.network :forwarded_port, guest: 9200, host: 9200

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end

  config.vm.provision :shell, path: 'bootstrap/bootstrap.sh', keep_color: true
  config.vm.provision :shell, path: "bootstrap/install-rvm.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "bootstrap/install-ruby.sh", args: "2.2.1 ", privileged: false
  config.vm.provision :shell, path: "bootstrap/setupapp.sh", privileged: false
end
