open-road
=========

# Development Setup
===========

## Prerequisites

1. Install Oracle VirtualBox (ensure it is in your system path)
2. Install Vagrant
3. Install plugins for Vagrant 
  1. `vagrant plugin install vagrant-omnibus` - Bootstraps chef runtime to the vagrantbox
  2. `vagrant plugin install vagrant-berkshelf` - Setup cookbook dependency manager for Chef
  3. `vagrant plugin install vagrant-cachier` - Something like apt-cache but for vagrant

## Install and run

```
vagrant up
# or 
mkdir -p ~/vagrantboxes
cd ~/vagrantboxes
wget http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-13.10_chef-provisionerless.box
cd {prject.dir}
vagrant box add openroad ~/vagrantboxes/opscode_ubuntu-13.10_chef-provisionerless.box
vagrant up

# if no errors
vagrant ssh
cd /vagrant/dockerfiles/cloud9
sudo docker build -t cloud9 .
docker run cloud9 -p 3131
```


 
License and Author
------------------
Copyright:: 2014, Antons Kranga

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
