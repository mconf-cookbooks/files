#
# Cookbook Name:: files
# Recipe:: default
# Author:: Felipe Cecagno (<felipe@mconf.org>)
#
# This file is part of the Mconf project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

node.override['files']['create'] = [node['files']['create']] unless node['files']['create'].is_a?(Array)

node['files']['create'].each do |file|
  dir = File.dirname(file['path'])
  
  directory dir do
    owner dir['user']
    group dir['group']
    mode dir['chmod']
    recursive true
    action :create
    not_if{ Dir.exist? dir && node['files']['create_dir'] }
  end
  
  cookbook_file file['path'] do
    source file['source'] if file.has_key?('source')
    owner file['user']
    group file['group']
    mode file['chmod']
    mode file['chmod']
    action :create
  end
end
