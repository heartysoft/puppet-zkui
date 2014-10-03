class zkui::install(
  $install_dir = $zkui::install_dir,
  $version = $zkui::version
) {

  file { $install_dir:
    ensure => directory
  }

  file {"${install_dir}/zkui-$version-jar-with-dependencies.jar" :
        ensure => present,
        source => "puppet:///modules/zkui/zkui-$version-jar-with-dependencies.jar",
        mode => 744,
        require => File[$install_dir],
        before => File['/etc/init.d/zkui'],
  }
}
