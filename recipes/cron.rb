#
# Cookbook Name:: consul-watches
# Recipe:: cron
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service 'consul'

consul_service_watch_def 'cron' do
  passingonly true
  handler 'sudo service cron restart'
  notifies :restart, "service[consul]", :delayed
end
