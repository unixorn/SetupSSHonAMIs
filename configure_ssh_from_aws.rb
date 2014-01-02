# Recipe:: configure_ssh_from_aws
# Copyright 2013, Numenta, Inc., All rights reserved


cookbook_file '/etc/init.d/getsshkeys' do
  source 'getsshkeys.initd'
  owner 'root'
  group 'root'
  mode '0755'
end

execute 'enable' do
  command "/sbin/chkconfig --level 2345 getsshkeys on"
end
