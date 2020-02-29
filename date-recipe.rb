#
# Cookbook:: test-cookbook
# Recipe:: date-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/date' do
  content 'what is todays date?'
  action :create
end
