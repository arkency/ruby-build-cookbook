Description
===========

Provides a definition to install ruby for user using [ruby-build](https://github.com/sstephenson/ruby-build)

Requirements
============

Should work anywhere.

Usage
=====

ruby
---------------

The `ruby` definition manages the installation and configuration of
ruby for user.

### Parameters:

* `version` - Ruby version to install. You can check the list of possible options [`ruby-build` github repository](https://github.com/sstephenson/ruby-build/tree/master/share/ruby-build).
* `owner` - Owner of installed files.
* `home` - Home directory of an user.
* `rubygems` - Rubygems version. Optional.
* `exports` - Databag path to store computed ruby properties. Optional.

### Examples:

```ruby
app          = node['app']
username     = app['name']
ruby_version = app['ruby']
home_dir     = "#{node.home_root}/#{username}"

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
  exports %W(app)
end
```

License and Author
==================

Author:: Arkency <dev@arkency.com>

Copyright 2012, Arkency

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
