class sudo::add_users (
  $users  = hiera('sudo::add_users', undef) 
){
  create_resources('::sudo::users', $users)
}
