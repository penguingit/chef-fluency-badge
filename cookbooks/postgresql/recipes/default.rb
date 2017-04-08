#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'posgresql-init' do
	command 'postgresql-setup inhitdb'
end

service 'postgresql' do
	action [:enable, :start]
end
