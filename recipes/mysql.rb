#
# Cookbook Name:: consul-watches
# Recipe:: mysql
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'mysql' do
  passingonly true
  handler 'sudo service mysql restart'
end