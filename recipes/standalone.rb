include_recipe 'chef-server12::_configure_server_dns' \
  if node['chef_server12']['write_hosts']
include_recipe 'chef-server12::_install_server'
include_recipe 'chef-server12::_create_admin'
include_recipe 'chef-server12::_create_org'
include_recipe 'chef-server12::_create_ssh_key_for_server'
include_recipe 'chef-server12::_configure_analytics' \
  if node['chef_server12']['analytics']
include_recipe 'chef-server12::_add_nodes' \
  if node['chef_server12']['create_nodes']