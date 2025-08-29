Vagrant.configure("2") do |config|

  # Box base (Ubuntu, mas pode trocar)
  IMAGE = "ubuntu/focal64"

  # Configuração padrão
  config.vm.box = IMAGE
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 2
  end

  # Config global (todas as VMs pegam isso)
  config.vm.synced_folder ".", "/vagrant", type: "rsync"
  config.vm.provision "shell", path: "provision.sh"

  # Rancher-Server
  config.vm.define "rancher-server" do |server|
    server.vm.hostname = "rancher-server"
    server.vm.network "private_network", ip: "192.168.56.10"
    server.vm.provision "shell", path: "provision-rancher-server.sh"
  end

  # k8s-1
  config.vm.define "k8s-1" do |node|
    node.vm.hostname = "k8s-1"
    node.vm.network "private_network", ip: "192.168.56.11"
  end

  # k8s-2
  config.vm.define "k8s-2" do |node|
    node.vm.hostname = "k8s-2"
    node.vm.network "private_network", ip: "192.168.56.12"
  end

  # k8s-3
  config.vm.define "k8s-3" do |node|
    node.vm.hostname = "k8s-3"
    node.vm.network "private_network", ip: "192.168.56.13"
  end
end
