#
# Cookbook:: test-cookbook
# Recipe:: details-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/details' do
  content "This is to collect details
  HOSTNAME:#{node['hostname']}
  IPADDRESS:#{node['ipaddress']}
  CPU:#{node['cpu']['0']['mhz']}
  MEMORY:#{node['memory']['total']}"
  action :create
end
