require 'rubygems'
require 'aliyun_ruby_api'

$VERBOSE=false

options = {:access_key_id => "xxxxxx",
           :access_key_secret => "yyyyy",
           :endpoint_url => "https://ecs.aliyuncs.com/"}


service = Aliyun::ECS::Service.new options


parameters = {}

puts service.DescribeRegions parameters