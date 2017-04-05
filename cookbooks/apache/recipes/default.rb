#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# Install apache package
package 'apache2' do
	package_name 'http'
	action:install
end

service 'apache2' do
	service_name 'httpd'
	action[:start,:enable]
end

