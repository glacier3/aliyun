require 'spec_helper'

describe Aliyun_Admin do
  it 'can create aliyun dns service' do
    options = load_options
    options[:service] = :dns
    service = Aliyun_Admin::Service.new options

    expect(service).to be_instance_of(Aliyun_Admin::Service)
    expect(service.service).to be(Aliyun_Admin::DNSConfig)
  end

  it 'can query aliyun dns service for domains' do
    options = load_options
    options[:service] = :dns
    service = Aliyun_Admin::Service.new options
    parameters = {}
    dns_service = service.DescribeDomains parameters

    expect(dns_service).to have_key("Domains")
    expect(dns_service).to have_key("TotalCount")
  end
end
