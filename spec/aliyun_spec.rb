require 'spec_helper'

describe Aliyun_Admin do
  it 'has a version number' do
    expect(Aliyun_Admin::VERSION).not_to be nil
  end

  it 'can load options' do
    option = load_options

    expect(option).to have_key(:access_key_id)
    expect(option).to have_key(:access_key_secret)
  end
end
