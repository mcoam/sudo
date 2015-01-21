class sudo::package inherits sudo {

	package {"${sudo_package}":
    		ensure => "installed"
	}
}
