#
# Cookbook Name:: mpg
# Recipe:: install_mysql
#
# Copyright 2015, commit technologies
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password 'rootpwd'
  action [:create, :start]
end

# mysql_config 'default' do
#   source 'my.cnf.erb'
#   cookbook 'mysql'
#   notifies :restart, 'mysql_service[default]'
#   action :create
# end