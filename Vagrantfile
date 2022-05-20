# ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
    config.vm.provision "shell", path: "bootstrap.sh"
	
	config.vm.define "vagrant-goland" do |node|
		node.vm.box = "ubuntu-bionic"
		# node.vm.network "private_network", ip: "192.168.159.10"
		node.vm.network "forwarded_port", guest: 9999, host: 9999
		# config.vm.synced_folder "../vagrant-share-folder/", "/home/vagrant/share"
		node.vm.provider "vmware_desktop" do |v|
			v.cpus = 4
			v.memory = 8192
		end
	end
end