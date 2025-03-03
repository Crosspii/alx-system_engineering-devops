# Puppet manifest to fix the apche 500 error we debugged


exec { 'fix-wordpress':
  command  => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  provider => shell,
}
