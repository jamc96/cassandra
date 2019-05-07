# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include cassandra
class cassandra(
  String $config_dir,
) {
  # creating main directory
  file { $config_dir:
    ensure  => directory,
    owner   => 'cassandra',
    group   => 'cassandra',
    require => User['cassandra'],
  }
}
