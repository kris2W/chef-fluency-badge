#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
  pacakge = "httpd"
elsif node['platform_family'] == "debian"
  package = "apache2"
elsif node['platform_family'] == "amazon"
  package = "httpd"
end

package 'apache2' do
  package_name 'httpd'
  action :install
end

service 'apache2' do
  service_name 'httpd'
  action [:start, :enable]
end
