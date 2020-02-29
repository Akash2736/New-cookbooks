#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/demofile' do
  content "this is a demo file"
  action :create
end
