define sudo::groups (
     $name = [],
     $content = '',
     $priority = '',
){

file { "/etc/sudoers.d/${priority}_${name}":
        ensure  => 'file',
        owner   => 'root',
	mode    => '0440',
	content => $content,
    }
}
