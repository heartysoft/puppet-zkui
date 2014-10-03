class zkui::config(
  $properties = $zkui::properties,
  $install_dir = $zkui::install_dir
) inherits zkui::params {
  
  $merged_properties = merge($zkui::params::properties, $properties)
  
  file { "$install_dir/config.cfg":
    ensure  => present,
    content => template('zkui/config.cfg.erb') 
  }
}
