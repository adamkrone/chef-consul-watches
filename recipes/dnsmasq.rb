#
# Cookbook Name:: consul-watches
# Recipe:: dnsmasq
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service 'consul'

consul_service_watch_def 'dnsmasq' do
  passingonly true
  handler 'sudo service dnsmasq restart'
  notifies :restart, "service[consul]", :delayed
end
