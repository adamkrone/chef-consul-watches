#
# Cookbook Name:: consul-watches
# Recipe:: lsyncd
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'lsyncd' do
  passingonly true
  handler 'sudo service lsyncd restart'
end
