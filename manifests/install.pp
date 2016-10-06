# == Class: prelink
#
# === prelink::install documentation
#
class prelink::install inherits prelink {

  if($prelink::manage_package)
  {
    # package here, for example: 
    #package { $prelink::params::package_name:
    #  ensure => $prelink::package_ensure,
    #}
  }

}
