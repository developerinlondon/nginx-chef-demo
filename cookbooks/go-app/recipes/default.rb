execute "install-go-application" do
  command "go install /opt/go/src/sample_go_app/application.go"
  user "vagrant"
  action :nothing
  notifies :restart, 'service[application]', :immediately
end

service 'application' do
  action :nothing
end

directory "/opt/go/src/sample_go_app/"  do
  owner 'vagrant'
  group 'vagrant'
  recursive true
end

git "/opt/go/src/sample_go_app/" do
  repository "https://github.com/developerinlondon/sample_go_app.git"
  action :sync
  notifies :run, 'execute[install-go-application]', :immediately
end

template "/etc/init.d/application" do
  source "initscript.sh.erb"
  owner 'root'
  group 'root'
  mode 0755
end
