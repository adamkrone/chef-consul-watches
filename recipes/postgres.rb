#
# Cookbook Name:: consul-watches
# Recipe:: postgres
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'postgres' do
  passingonly true
  handler 'sudo service postgres restart'
  notifies :restart, "service[consul]", :delayed
end
