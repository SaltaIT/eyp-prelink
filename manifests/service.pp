class prelink::service inherits prelink {

  #
  validate_bool($prelink::manage_docker_service)
  validate_bool($prelink::manage_service)
  validate_bool($prelink::service_enable)

  validate_re($prelink::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${prelink::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $prelink::manage_docker_service)
  {
    if($prelink::manage_service)
    {
      #service or exec here
    }
  }
}
