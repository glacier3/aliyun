require 'spec_helper'

describe Aliyun_Admin do
  it 'can create aliyun slb service' do
    options = load_options
    options[:service] = :slb
    service = Aliyun_Admin::Service.new options

    expect(service).to be_instance_of(Aliyun_Admin::Service)
    expect(service.service).to be(Aliyun_Admin::SLBConfig)
  end

  it 'can query aliyun slb regions' do
    options = load_options
    options[:service] = :slb
    service = Aliyun_Admin::Service.new options
    parameters = {}
    regions = service.DescribeRegions parameters

    expect(regions).to have_key("Regions")
    expect(regions["Regions"]).to have_key("Region")
  end

  it "can describe aliyun slb regions" do
    options = load_options
    options[:service] = :slb
    service = Aliyun_Admin::Service.new options
    parameters = {}
    slbs = service.DescribeLoadBalancers :RegionId => "cn-beijing"

    expect(slbs).to have_key("LoadBalancers")
    #expect(slbs["LoadBalancers"]).to have_key("LoadBalancer")
  end
end
