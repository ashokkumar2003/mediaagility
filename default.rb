execute "yum update" do
  command "yum update -y"
end

execute "yum security update" do
  command "yum update --security -y"
end


package 'httpd24' do
  action :install
end

package 'httpd24-devel' do
  action :install
end

package 'gcc' do
  action :install
end
package 'gcc-c++' do
  action :install
end
package 'mod24_ssl' do
  action :install
end
package 'make' do
  action :install
end
package 'mlocate' do
  action :install
end

package 'telnet' do
  action :install
end

package 'mysql' do
  action :install
end

package 'git' do
  action :install
end

package 'subversion' do
  action :install
end

package 'postfix' do
  action :install
end


package 'curl' do
  action :install
end

package 'php56' do
  action :install
end

package 'php56-cli' do
  action :install
end

package 'php56-mysqlnd' do
  action :install
end

package 'php56-dba' do
  action :install
end

package 'php56-mbstring' do
  action :install
end

package 'php56-soap' do
  action :install
end

package 'php56-xmlrpc' do
  action :install
end

package 'php56-mcrypt' do
  action :install
end

package 'php56-devel' do
  action :install
end

package 'php56-embedded' do
  action :install
end


package 'php56-pdo' do
  action :install
end

package 'php56-xml' do
  action :install
end

package 'php56-bcmath' do
  action :install
end

package 'php56-pecl-memcache' do
  action :install
end

package 'php56-pecl-memcached' do
  action :install
end

package 'php56-gd' do
  action :install
end

package 'php56-pecl-apc' do
  action :install
end

service 'httpd' do
        action [ :enable,:start ]
end

service 'sendmail' do
        action [ :enable,:stop ]
end

service 'postfix' do
        action [ :enable,:start ]
end

execute "service on" do
  command "chkconfig sendmail off;chkconfig sendmail off;chkconfig postfix on;chkconfig httpd on"
end
