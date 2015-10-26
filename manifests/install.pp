class fluentd::install inherits fluentd {
  if $fluentd::repo_install {
    require fluentd::install_repo
  }

  package { $fluentd::package_name:
    ensure => $fluentd::package_ensure,
  }
}
