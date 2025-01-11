# This Puppet manifest kills a process named "killmenow" using pkill

exec { 'killmenow':
  commang => '/usr/bin/pkill -f killmenow',
  path => ['/usr/bin', '/bin'],
  unless => 'pgrep -f killmenow',
}
