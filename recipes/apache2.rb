#
# Cookbook Name:: consul-watches
# Recipe:: apache2
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service 'consul'

consul_service_watch_def 'apache2' do
  passingonly true
  handler 'sudo service apache2 restart'
  notifies :restart, "service[consul]", :delayed
end
