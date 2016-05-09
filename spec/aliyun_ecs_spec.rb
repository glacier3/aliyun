require 'spec_helper'

describe Aliyun_Admin do
  it 'can create aliyun ecs service' do
    options = load_options
    options[:service] = :ecs
    service = Aliyun_Admin::Service.new options

    expect(service).to be_instance_of(Aliyun_Admin::Service)
    expect(service.service).to be(Aliyun_Admin::ECSConfig)
  end

  it 'can query aliyun ecs regions' do
    options = load_options
    options[:service] = :ecs
    service = Aliyun_Admin::Service.new options
    parameters = {}
    regions = service.DescribeRegions parameters

    expect(regions).to have_key("Regions")
    expect(regions["Regions"]).to have_key("Region")
  end
end
