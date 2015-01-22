#
# Cookbook Name:: consul-watches
# Recipe:: haproxy
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

consul_service_watch_def 'haproxy' do
  passingonly true
  handler 'sudo service haproxy restart'
end
