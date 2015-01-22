#
# Cookbook Name:: consul-watches
# Recipe:: keepalived
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'keepalived' do
  passingonly true
  handler 'sudo service keepalived restart'
  notifies :restart, "service[consul]", :delayed
end
