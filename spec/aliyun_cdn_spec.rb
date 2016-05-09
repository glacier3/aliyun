require 'spec_helper'

describe Aliyun_Admin do
  it 'can create aliyun cdn service' do
    options = load_options
    options[:service] = :cdn
    service = Aliyun_Admin::Service.new options

    expect(service).to be_instance_of(Aliyun_Admin::Service)
    expect(service.service).to be(Aliyun_Admin::CDNConfig)
  end

  it 'can query aliyun cdn service' do
    options = load_options
    options[:service] = :cdn
    service = Aliyun_Admin::Service.new options
    parameters = {}
    cdn_service = service.DescribeCdnService parameters

    expect(cdn_service).to have_key("InternetChargeType")
    expect(cdn_service).to have_key("OpeningTime")
  end
end
