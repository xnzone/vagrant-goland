# ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
    config.vm.provision "shell", path: "bootstrap.sh"
	
	config.vm.define "vagrant-goland" do |node|
		node.vm.box = "ubuntu-1804"
		node.vm.network "private_network", ip: "192.168.33.10"
		node.vm.provider "virtualbox" do |v|
			v.cpus = 1
			v.memory = 8192
		end
	end
end