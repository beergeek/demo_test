source 'https://rubygems.org'

group :test do
  puppetversion = ENV.key?('PUPPET_VERSION') ? "#{ENV['PUPPET_VERSION']}" : ['>= 4.0']
  gem 'puppet', puppetversion
  gem 'puppetlabs_spec_helper', '>= 0.8.2'
  gem 'puppet-lint', '>= 1.0.0'
  gem "metadata-json-lint"
  gem 'facter', '>= 1.7.0'
  gem 'simplecov', :require => false, :group => :test
  gem 'simplecov-console'
end
