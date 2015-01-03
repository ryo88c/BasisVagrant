BasisVagrant
============

This repository is the basis of Vagrant.

# Make preparations for

Install Chef DK.
https://downloads.chef.io/chef-dk/

# Install

```
bundle --path vendor/bundle --binstubs vendor/bin
bundle exec knife conifigure
vagrant up
vagrant ssh-config --host basis >> ~/.ssh/config
bundle exec knife solo cook basis
vagrant package --output basis
```

You can use the VM that already installed basic middlewares.
For example: `vagrant init basis`