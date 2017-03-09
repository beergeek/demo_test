require 'spec_helper'
describe 'demo_test' do

  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('demo_test') }

    it do
      is_expected.to contain_user('demo').with({
        'ensure'  => 'present',
        'gid'     => 'demo',
        'home'    => '/home/demo',
      })
    end

    it do
      is_expected.to contain_group('demo').with({
        'ensure'  => 'present',
      })
    end


    it do
      is_expected.to contain_file('/home/demo').with({
        'ensure'  => 'directory',
        'owner'   => 'demo',
        'group'   => 'demo',
        'mode'    => '0600',
      })
    end

    it do
      is_expected.to contain_file('/home/demo/.ssh').with({
        'ensure'  => 'directory',
        'owner'   => 'demo',
        'group'   => 'demo',
        'mode'    => '0600',
      })
    end

    it do
      is_expected.to contain_user('larissa').with({
        'ensure'    => 'present',
      })
    end
  end
end
