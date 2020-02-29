#
# Cookbook:: test-cookbook
# Recipe:: tree-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/testfile' do
  content "this is a test file"
  action :create
  owner 'root'
  group 'root'
end
