script "add to zend env" do
	interpreter "bash"
	user "root"
	cwd "/tmp"
	code <<-EOH
		cat >> /etc/profile.d/zend.sh <<EOF
		export PATH=$PATH:/usr/local/zend/bin
		EOF
	EOH
end

execute "update env" do
	command "source /etc/profile"
	action :run
end

