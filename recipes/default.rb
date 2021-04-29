case node['platform']
when 'debian', 'ubuntu'
  package "git"
  package "build-essential"
  package "zlib1g-dev"
  package "libyaml-dev"
  package "libssl-dev"
  package "libgdbm-dev"
  package "libreadline-dev"
  package "libncurses5-dev"
  package "libffi-dev"

when 'centos', 'amazon', 'rhel'
  package "git"
  package "gcc"
  package "automake"
  package "zlib-devel"
  package "libyaml-devel"
  package "openssl-devel"
  package "gdbm-devel"
  package "readline-devel"
  package "ncurses-devel"
  package "libffi-devel"
end
