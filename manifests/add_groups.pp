class sudo::add_groups (
  $groups  = hiera('sudo::add_groups', undef) 
){
  create_resources('::sudo::groups', $groups)
}
