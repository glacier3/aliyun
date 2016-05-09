require "aliyun_admin/services/cdn"
require "aliyun_admin/services/cms"
require "aliyun_admin/services/dns"
require "aliyun_admin/services/ecs"
require "aliyun_admin/services/ram"
require "aliyun_admin/services/rds"
require "aliyun_admin/services/slb"
require "aliyun_admin/services/sts"

module Aliyun_Admin
  SERVICES = {
    :cdn => CDNConfig,
    :cms => CMSConfig,
    :dns => DNSConfig,
    :ecs => ECSConfig,
    :ram => RAMConfig,
    :rds => RDSConfig,
    :slb => SLBConfig,
    :sts => STSConfig
  }
end
