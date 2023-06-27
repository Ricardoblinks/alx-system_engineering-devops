#kill the program with the name killmenow

exec { 'killmenow':
  command     => 'pkill killmenow',
  path        => '/usr/bin:/bin',  # Specify the appropriate path for pkill command
  onlyif      => 'pgrep killmenow', # Only execute the command if the process exists
  refreshonly => true,              # Only run the command when explicitly refreshed
}

