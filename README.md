puppet-zkui
================

This is a puppet script to set up [zkui(https://github.com/DeemOpen/zkui)].
This expects zookeeper to already be installed.

## Requirements

You will need to first buil zkui from the github source. 
Simply clone and in the root directory run:
mvn clean install

This will output some jars in a (new) target folder. Grab zkui-2.0-SNAPSHOT-jar-with-dependencies.jar 
and place it in the "files" folder of this puppet module.

## Example usage

node 'foo' {
	class { 'zkui':
		version => '2.0-SNAPSHOT',
		properties => {
			'serverPort' => '9050',
			'zkServer' => 'zoo1:2181,zoo2:2181,zoo3:2181',
		}
	}
}

Check manifests/params for the configurable parameters.


