
include stdlib

class zkui(
  $version = $zkui::params::version,
  $install_dir = $zkui::params::install_dir,
  $properties = $zkui::params::properties
) inherits zkui::params {

  anchor {'zkui::begin:': } ->
  class { 'zkui::install': } ->
  class { 'zkui::config': } ~>
  class { 'zkui::service': } ->
  anchor {'zkui::end:': }
}
