
# Cookbook Name:: lean_chef_akmm
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory "welcome"

package "httpd"

service "httpd" do
	action:start
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
