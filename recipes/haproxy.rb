#
# Cookbook Name:: consul-watches
# Recipe:: haproxy
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service 'haproxy'

consul_service_watch_def 'haproxy' do
  passingonly true
  handler 'sudo service haproxy restart'
  notifies :restart, "service[consul]", :delayed
end
