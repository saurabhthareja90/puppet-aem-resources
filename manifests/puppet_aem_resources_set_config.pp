class aem_resources::puppet_aem_resources_set_config(
  $conf_dir,
  $username = undef,
  $password = undef,
  $protocol = undef,
  $host = undef,
  $port = undef,
  $debug = undef,
) {

  file { "${conf_dir}/aem.yaml":
    ensure  => file,
    content => epp('aem_resources/aem.yaml.epp', {
      username => "${username}",
      password => "${password}",
      protocol => "${protocol}",
      host     => "${host}",
      port     => "${port}",
      debug    => "${debug}",
    }),
    mode    => '0664',
  }

}