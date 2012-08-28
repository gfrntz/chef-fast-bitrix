%w{ zip zem xsl sockets optimizer-plus mysql mcrypt mbstring json gd ftp fileinfo exif curl ctype bz2 bin bcmath }.each do |apt|
	package "php-5.3-#{apt}-zen-server"
		action :install
	end
end

%w{ exim4-daemon-light nginx-full mysql-server }.each do |apt|
	package "#{apt}" do
		action :install
	end
end