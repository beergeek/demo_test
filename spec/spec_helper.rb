require 'simplecov'
require 'simplecov-console'

SimpleCov.start do
  add_filter '/files'
  add_filter '/tests'
  add_filter '/examples'
  formatter SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ])
end
require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
require 'puppet-syntax/tasks/puppet-syntax'
require 'metadata-json-lint/rake_task'
require 'puppetlabs_spec_helper/module_spec_helper'
RSpec.configure do |c|
  c.after(:suite) do
    RSpec::Puppet::Coverage.report!(95)
  end
end
