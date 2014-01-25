Vagrant.configure("2") do |config|

  config.vm.box = "docker"

  config.vm.box_url  = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-13.10_chef-provisionerless.box"
  config.vm.hostname = "open-road"

  config.berkshelf.enabled = true
  config.cache.auto_detect = true

  config.omnibus.chef_version = :latest

  config.vm.network :forwarded_port, guest: 49153, host: 3131

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.json = {

    }
    chef.run_list = [
      "apt",
      "git",
      "docker"
    ]
  end
end