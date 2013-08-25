# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["..", "."]
    chef.add_recipe File.basename(File.dirname(__FILE__))
    chef.add_recipe 'test'
  end
end
