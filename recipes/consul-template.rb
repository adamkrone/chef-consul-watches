#
# Cookbook Name:: consul-watches
# Recipe:: consul-template
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'consul-template' do
  passingonly true
  handler 'sudo service consul-template restart'
end
