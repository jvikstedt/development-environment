Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "shell", inline: "ln -s /vagrant /home/vagrant/development-environment", privileged: false
end

