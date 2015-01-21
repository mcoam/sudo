class sudo(
	$sudo_package	= $sudo::params::sudo_package,
)
inherits sudo::params {
	include add_users
	include add_groups
	class {'::sudo::package':} ->
	class {'::sudo::config':}  ->
	Class ['sudo']
}
