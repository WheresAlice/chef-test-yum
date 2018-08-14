#
# Cookbook Name:: yum_test
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.


yum_repository 'cloudera' do
  description "cloudera Repo"
  baseurl "https://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/5/"
  gpgkey 'https://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera'
  enabled false
  action :create
end

package 'hbase' do
  action [:remove]
end

package 'kudu' do
  options "--enablerepo=cloudera"
  action [:install]
end