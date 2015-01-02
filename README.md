BasisVagrant
============

This repository is the basis of Vagrant.

# Make preparations for

Install Chef DK.
https://downloads.chef.io/chef-dk/

# Install

```
berks
bundle --path vendor/bundle --binstubs vendor/bin
bundle exec knife conifigure
vagrant up
vagrant package --output basis
```

You can use the VM that already installed basic middlewares.
For example: `vagrant init basis`