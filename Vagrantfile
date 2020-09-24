Vagrant.configure("2") do |config|
  config.vm.define "gitserver" do |gitserver|

    gitserver.vm.box = "centos/7"

    gitserver.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
      vb.name = "gitserver"
    end
    
    gitserver.vm.network "public_network"
    
    gitserver.vm.provision "shell", path: "custom-linux.sh"
    gitserver.vm.provision "shell", path: "install-epel.sh"
    gitserver.vm.provision "shell", path: "install-git.sh"
    gitserver.vm.provision "shell", path: "add-git-user.sh"
    gitserver.vm.provision "shell", path: "git-server-config.sh"

  end
end
