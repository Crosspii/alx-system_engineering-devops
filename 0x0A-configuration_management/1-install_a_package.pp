# This Puppet manifest installs Flask version 2.1.0 using pip3 on Ubuntu 20.04 LTS

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
