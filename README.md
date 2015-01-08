BasisVagrant
============

This repository is the basis of Vagrant.

# Make preparations for

Install Chef DK.
https://downloads.chef.io/chef-dk/

# Install

```
bundle --path vendor/bundle --binstubs vendor/bin
bundle exec knife configure
vagrant up
vagrant ssh-config --host basis >> ~/.ssh/config
bundle exec knife solo cook basis
vagrant package --output basis
vagrant box add basis basis
rm basis
vagrant box list|grep basis
```

## About Windows8

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](http://www.vagrantup.com/downloads.html)
3. Install [Cygwin](http://cygwin.com/install.html) *Install Ruby, Rubygem, Bundler, and Git while install Cygwin.*
4. Perform Cygwin, and clone this repository. Ex. `git clone https://github.com/ryo88c/BasisVagrant.git`
5. Perform `gem install lack ffi`.

You can use the VM that already installed basic middlewares.
For example: `vagrant init basis`
