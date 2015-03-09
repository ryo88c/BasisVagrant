BasisVagrant
============

This repository is the basis of Vagrant.

# Make preparations for

Install Chef DK.
https://downloads.chef.io/chef-dk/

# Install rbenv

```
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
sudo port install openssl readline libiconv
CONFIGURE_OPTS="--with-openssl-dir=/opt/local --with-readline-dir=/opt/local --with-iconv-dir=/opt/local" rbenv install 2.1.2
rbenv rehash
rbenv global 2.1.2
sudo curl "http://curl.haxx.se/ca/cacert.pem" -o /opt/local/etc/openssl/cert.pem
```

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
3. Install [Cygwin](http://cygwin.com/install.html) 
4. Install `unzip openssl openssh curl colorgcc gcc-core git git-completion libtool libncurses-devel make openssl-devel cygwin32-readline zlib zlib-devel libyaml-devel libyaml0_2 patch sqlite3 autoconf automake bison m4 mingw64-i686-gcc-core mingw64-x86_64-gcc-core libffi-devel ruby-pkg-config` as package of Cygwin.
5. Run Cygwin
6. `mkdir repositories`
7. `cd repositories`
8. `mkdir developwithpassion`
9. `cd developwithpassion`
10. `git clone git://github.com/developwithpassion/devtools`
11. `cd devtools`
12. `./osx_or_cygwin_kick_off`
13. `cd ~`
14. `git clone https://github.com/ryo88c/BasisVagrant.git`

Via: http://blog.developwithpassion.com/2012/03/30/installing-rvm-with-cygwin-on-windows/

You can use the VM that already installed basic middlewares.
For example: `vagrant init basis`
