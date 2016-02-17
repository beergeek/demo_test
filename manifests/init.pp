# Class: demo_test
# ===========================
#
# Full description of class demo_test here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'demo_test':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class demo_test {

  File {
    owner => 'demo',
    group => 'demo',
    mode  => '0600',
  }

  user { 'demo':
    ensure => present,
    gid    => 'demo',
    home   => '/home/demo',
  }

  group { 'demo':
    ensure => present,
  }

  file { ['/home/demo','/home/demo/.ssh']:
    ensure => directory,
    mode   => '0600',
  }

  file { '/home/demo/.ssh/authorized_keys':
    ensure => file,
  }
}
