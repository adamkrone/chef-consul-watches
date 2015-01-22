#
# Cookbook Name:: consul-watches
# Recipe:: postgres
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service 'consul'

consul_service_watch_def 'postgresql' do
  passingonly true
  handler 'sudo service postgresql restart'
  notifies :restart, "service[consul]", :delayed
end
