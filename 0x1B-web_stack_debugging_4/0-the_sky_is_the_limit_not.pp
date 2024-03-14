# instal the sky is the limit no
exec { 'update ulimit':
  command  => "sed -i 's/^ULIMIT=.*/ULIMIT=\"-n 15000\"/' /etc/default/nginx",
  provider => 'shell',
}

-> exec { 'restart service':
  command  => 'service nginx restart',
  provider => 'shell',
}