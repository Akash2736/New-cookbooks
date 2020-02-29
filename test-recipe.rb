#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/myfile' do 
  content 'Hello dear students!! Good Morning'
  action :create
end

execute 'Linux command' do
  command <<-EOH
  mkdir /akashdir
  touch /akashfile
  EOH
end

user 'akash' do
  action :create
end

group 'devops' do
  action :create
  members 'akash'
  append true
end

file 'test-output' do
  content "TEST OUTPUT
  HOSTNAME: #{node['hostname']}
  MEMORY: #{node['memory']['total']}
  OS: #{node['os']}
  OS VERSIONN: #{node['os_version']}"
  owner 'akash'
  group 'akash'
end

execute 'linux-cmd-output' do
  command <<-EOH
  mkdir /linux_commands
  touch /linux_commands/lin_cmd
  vmstat > /linux_commands/lin_cmd
  EOH
end
