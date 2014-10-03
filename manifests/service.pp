
class zkui::service(
  $install_dir = $zkui::install_dir,
  $config_dir = $zkui::config_dir,
  $version = $zkui::version
) {

  notice("install dir is $install_dir")

  file { '/etc/init.d/zkui':
    ensure  => present,
    content => template('zkui/init.d.erb'),
    mode    => '0755',
  }

  service { 'zkui':
    ensure => 'running',
    enable => true,
    require => File['/etc/init.d/zkui']
  }
}
