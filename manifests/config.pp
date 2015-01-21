class sudo::config inherits baseos {

$source_base = "puppet:///modules/${module_name}"

  case $::osfamily {
    'debian': {
        #notify {'NOTICE': message => "Esto es debian"}  
	case $::fqdn { 
	   'mailcleaner.itlinux.cl': {
		file {'/etc/sudoers':
                	ensure  => present,
			source  => "${source_base}/sudoers.mc",
                	owner   => 'root',
                	group   => 'root',
                	mode    => '0440',
			require => Class["sudo::package"],
		}
	     }
	   default:{
		file {'/etc/sudoers':
                        ensure  => present,
                        owner   => 'root',
			source  => "${source_base}/sudoers.deb",
                        group   => 'root',
                        mode    => '0440',
			require => Class["sudo::package"],
                }
             }
           }
	} 
    'redhat': {
	# notify {'NOTICE': message => "Este es un Centos "}  
   	case $::fqdn {
           /.*\.zbox\.cl/: {
                file {'/etc/sudoers':
                        ensure  => present,
                        source  => "${source_base}/sudoers.zcs",
                        owner   => 'root',
                        group   => 'root',
                        mode    => '0440',
                        require => Class["sudo::package"],
                }
             }
	   default:{
      		file {'/etc/sudoers':
			ensure  => present,
			source  => "${source_base}/sudoers.rhel6",
      			owner   => 'root',
      			group   => 'root',
			mode    => '0440',
			require => Class["sudo::package"],
	   	}
	  	file {'/etc/sudoers.d':
                	ensure  => directory,
		}
	}
     }
   } 
 } 
}
