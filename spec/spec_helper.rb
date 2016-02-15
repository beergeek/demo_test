require 'simplecov'
require 'simplecov-console'

SimpleCov.config do
  add_filter '/spec'
  add_filter '/vendor'
  formatter SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ])
end

SimpleCov.start
require 'puppetlabs_spec_helper/module_spec_helper'
