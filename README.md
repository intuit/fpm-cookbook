[![Build Status](https://secure.travis-ci.org/intuit/fpm-cookbook.png)](http://travis-ci.org/intuit/fpm-cookbook)

# fpm-cookbook
installs fpm

# Requirements
* Chef 10.x

Platform:
* CentOS 6.x
* RHEL 6.x

# Usage
Add the fpm-cookbook to your role/run_list.

# Attributes
* ```node["fpm"]["gem_binary"]``` - Path to gem, default is /usr/bin/gem 
* ```node['fpm']['version']``` - version to install, default is 0.4.10

# Recipes
## default
Installs fpm

# Authors
* Kevin Young (@keviny22)
