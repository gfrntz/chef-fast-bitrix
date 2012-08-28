apt_repository "zend-server" do 
	uri "http://repos.zend.com/zend-server/deb"
	distribution node['lsb']['codename']
	components ["non-free"]
	key "http://repos.zend.com/zend.key"
	action :add
end

include_recipe "bitrix-fast::install"
include_recipe "bitrix-fast::config"