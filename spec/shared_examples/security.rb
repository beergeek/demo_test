require 'spec_helper'

shared_examples_for 'Security Tests' do |fact_set|
  describe "Security Checks" do
    it { is_expected.to satisfy_file_resource_requirements }
  end
end
