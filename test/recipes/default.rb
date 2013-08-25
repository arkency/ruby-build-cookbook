username     = 'vagrant'
ruby_version = '2.0.0-p0'
home_dir     = "/home/#{username}"

user username do
  shell "/bin/bash"
  supports :manage_home => true
  action :create
  home home_dir
end

ruby "#{ruby_version}-#{username}" do
  version ruby_version
  home home_dir
  owner username
end
