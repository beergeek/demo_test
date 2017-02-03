require 'spec_helper'
describe 'demo_test' do

  context 'with defaults for all parameters' do
    it { should contain_class('demo_test') }
    it_should_behave_like 'Security Tests'

    it {
      should contain_user('demo').with(
        'ensure'  => 'present',
        'gid'     => 'demo',
        'home'    => '/home/demo',
      )
    }

    it {
      should contain_group('demo').with(
        'ensure'  => 'present',
      )
    }

    it {
      should contain_file('/home/demo').with(
        'ensure'  => 'directory',
        'owner'   => 'demo',
        'group'   => 'demo',
        'mode'    => '0600',
      )
    }

    it {
      should contain_file('/home/demo/.ssh').with(
        'ensure'  => 'directory',
        'owner'   => 'demo',
        'group'   => 'demo',
        'mode'    => '0600',
      )
    }
  end
end
