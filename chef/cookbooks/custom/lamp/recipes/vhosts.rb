#
# Cookbook Name:: lamp
# Recipe:: vhosts

# Project virtual host
web_app "lamp" do
  server_name node['lamp']['url']
  server_aliases node['lamp']['vhosts']['server_aliases']
  docroot node['lamp']['vhosts']['docroot']
  directory_index "index.php"
  allow_override "All"
  log_level node['lamp']['vhosts']['log_level']
end

# Install Phpmyadmin
package "phpmyadmin" do
  action :install
end

# Phpmyadmin virtual host
link '/etc/apache2/sites-enabled/pma.conf' do
  to     '/etc/phpmyadmin/apache.conf'
  not_if 'test -f /etc/apache2/sites-enabled/pma.conf'
end


# Edit hosts for curl
execute "edit hosts" do
  command  "echo '127.0.0.1 #{ node['lamp']['url'] }' >> /etc/hosts"
  user     "root"
end