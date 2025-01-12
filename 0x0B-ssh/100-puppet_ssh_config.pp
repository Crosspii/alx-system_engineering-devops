# Puppet Manifest to change the ssh configuration file

file_line { 'Declare identity file':
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  match   => '^\\s*IdentityFile\\s+.*',
  ensure  => present,
}

file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  match   => '^\\s*PasswordAuthentication\\s+.*',
  ensure  => present,
}
