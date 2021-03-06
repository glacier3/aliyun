module Aliyun_Admin
  class CDNConfig < APIConfig
    def self.info
      "Aliyu CDN Service"
    end
    def self.endpoint
      'https://cdn.aliyuncs.com/'
    end
    def self.default_parameters
      {
        :Format=>"JSON",
        :Version=>"2014-11-11",
        :SignatureMethod=>"HMAC-SHA1",
        :SignatureVersion=>"1.0"
      }
    end
    def self.separator
      super
    end
    def self.http_method
      super
    end
  end
end
