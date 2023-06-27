# This Puppet manifest creates a file in /tmp called "school" with specific permissions and ownership

file { '/tmp/school':
  ensure  => 'file',
  content => "I love Puppet\n",
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
}

