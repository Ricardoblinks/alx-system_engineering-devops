#This manifest kills a program called killmenow

exec { 'killmenow':
  command     => 'pkill killmenow',
  path        => ['/usr/bin', '/bin'],  # Specify the appropriate path for pkill command
  refreshonly => true,                  # Only run the command when explicitly refreshed
  subscribe   => File['killmenow_script'],
}


