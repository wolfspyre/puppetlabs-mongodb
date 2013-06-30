class mongodb::sources::yum inherits mongodb::params {
  yumrepo { '10gen':
    enabled   => '1',
    baseurl   => $mongodb::params::baseurl,
    descr     => '10gen',
    gpgcheck  => '0',
  }
  file {'10gen_repofile':
    ensure  => 'file',
    group   => 'root',
    mode    => '0444',
    owner   => 'root',
    path    => '/etc/yum.repos.d/10gen.repo'
  }
}
