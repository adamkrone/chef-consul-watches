#
# Cookbook Name:: consul-watches
# Recipe:: wordpress
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service 'lsyncd'
service 'dnsmasq'

consul_service_watch_def 'wordpress' do
  passingonly true
  handler 'sudo service lsyncd restart && sudo service dnsmasq restart'
  notifies :restart, "service[consul]", :delayed
end
