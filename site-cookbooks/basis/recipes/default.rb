#
# Cookbook Name:: basis
# Recipe:: default
#
# Copyright 2015, SPaiS Inc.
#
# The MIT License
#
# Copyright (c) 2010-2014 Mitchell Hashimoto
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
bash "Update" do
    code <<-EOT
        aptitude update
    EOT
end
package 'vim' do
  action :install
end
package 'zsh' do
  action :install
end
package 'tmux' do
  action :install
end
package 'git' do
  action :install
end
package 'curl' do
  action :install
end
package 'ntp' do
  action :install
end
package 'tig' do
  action :install
end
package "mysql-common-5.6" do
  action :install
end
package "mysql-server-5.6" do
  action :install
end
package "mysql-client-5.6" do
  action :install
end
package "nginx-extras" do
  action :install
end
package 'php5-fpm' do
  action :install
end
package "php5-cli" do
  action :install
end
package "php5-dev" do
  action :install
end
package "php5-curl" do
  action :install
end
package "php5-mcrypt" do
  action :install
end
package "php5-apcu" do
  action :install
end
package "php5-gd" do
  action :install
end
package "php5-memcached" do
  action :install
end
package "php5-mysql" do
  action :install
end
package "php5-sqlite" do
  action :install
end
package "php5-xdebug" do
  action :install
end
package "php5-xhprof" do
  action :install
end
package "w3m" do
  action :install
end
package "wget" do
  action :install
end
package "tree" do
  action :install
end
bash "Set vagrant's shell to zsh" do
    code <<-EOT
        chsh -s /usr/bin/zsh vagrant
    EOT
    not_if 'test "/usr/bin/zsh" = "$(grep vagrant /etc/passwd | cut -d: -f7)"'
end
cookbook_file '/home/vagrant/.zshrc' do
    source ".zshrc"
    owner "vagrant"
    group "vagrant"
    mode "0700"
end
cookbook_file '/usr/bin/composer' do
    source "composer"
    mode "0755"
end
cookbook_file '/usr/bin/phpunit' do
    source "phpunit"
    mode "0755"
end
bash "Set up nvm" do
    code <<-EOT
        curl https://raw.githubusercontent.com/creationix/nvm/v0.22.0/install.sh | bash
        nvm install stable
        npm -g install gulp gulp-compass gulp-watch gulp-uglify gulp-minify-css component
    EOT
end
