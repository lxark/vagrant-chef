#
# Cookbook Name:: lamp
# Attributes:: vhosts

# Virtual hosts attributes
default['lamp']['vhosts']['server_aliases'] = ["lamp.local"]
default['lamp']['vhosts']['docroot'] = "/vagrant"
default['lamp']['vhosts']['log_level'] = "debug"