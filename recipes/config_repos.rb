apt_repository "zend" do
	uri "http://repos.zend.com/zend-server/deb"
	components ["server", "non-free"]
	key "http://repos.zend.com/zend.key"
	action :add
end