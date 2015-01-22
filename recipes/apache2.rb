#
# Cookbook Name:: consul-watches
# Recipe:: apache2
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'apache2' do
  passingonly true
  handler 'sudo service apache2 restart'
end
